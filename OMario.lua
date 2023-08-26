-- name: Old Mario
-- incompatible:
-- description: b3313 version

E_MODEL_MARIO = smlua_model_util_get_id("mario_player_geo")
E_MODEL_LUIGI = smlua_model_util_get_id("luigi_player_geo")

gStateExtras = {}
for i=0,(MAX_PLAYERS-1) do
    gStateExtras[i] = {}
    local m = gMarioStates[i]
    local e = gStateExtras[i]

	e.rotAngle = 0
	e.healTimer = 0
    e.animFrame = 0
end

ACT_GROUND_POUND_OLD = allocate_mario_action(ACT_GROUP_AIRBORNE | ACT_FLAG_AIR | ACT_FLAG_ATTACKING)

function act_ground_pound_old(m)
    local e = gStateExtras[m.playerIndex]

	if m.actionTimer == 0 then
		m.vel.y = -50
		e.animFrame = 2
		play_sound(SOUND_ACTION_SPIN, m.marioObj.header.gfx.cameraToObject)
		play_character_sound(m, CHAR_SOUND_GROUND_POUND_WAH)
	end
	mario_set_forward_vel(m, 0)
	m.vel.y = m.vel.y + 1.75

	local stepResult = perform_air_step(m, 0)
	if stepResult == AIR_STEP_LANDED then
		if should_get_stuck_in_ground(m) ~= 0 then
			queue_rumble_data_mario(m, 5, 80)
			play_sound(SOUND_MARIO_OOOF2, m.marioObj.header.gfx.cameraToObject)
			m.particleFlags = m.particleFlags | PARTICLE_MIST_CIRCLE
			set_mario_action(m, ACT_BUTT_STUCK_IN_GROUND, 0)
		else
			play_mario_heavy_landing_sound(m, SOUND_ACTION_TERRAIN_HEAVY_LANDING)
			if check_fall_damage(m, ACT_HARD_BACKWARD_GROUND_KB) == 0 then
				m.particleFlags = m.particleFlags | PARTICLE_MIST_CIRCLE | PARTICLE_HORIZONTAL_STAR
				set_mario_action(m, ACT_GROUND_POUND_LAND, 0)
			end
		end
	end

	set_mario_animation(m, MARIO_ANIM_START_GROUND_POUND)
	set_anim_to_frame(m, e.animFrame)
	if e.animFrame >= m.marioObj.header.gfx.animInfo.curAnim.loopEnd then
		e.animFrame = m.marioObj.header.gfx.animInfo.curAnim.loopEnd
	end
	e.animFrame = e.animFrame + 1
	m.actionTimer = m.actionTimer + 1
	return
end

function mario_before_phys_step(m)
    local floorClass = mario_get_floor_class(m)
    local hScale = 1.0

	if (m.action == ACT_TURNING_AROUND or m.action == ACT_MOVE_PUNCHING) then
        if (floorClass == 19 or floorClass == 20) then
            m.forwardVel = m.forwardVel + 0
        elseif (floorClass == 21) then
            hScale = hScale * 1.7
			if m.action == ACT_MOVE_PUNCHING then
                m.forwardVel = m.forwardVel + (hScale * 0.2)
			else
                m.forwardVel = m.forwardVel + (hScale * 2.5)
			end
        else
            hScale = hScale * 1.2
			if m.action == ACT_MOVE_PUNCHING then
                m.forwardVel = m.forwardVel + (hScale * 0.2)
			else
                m.forwardVel = m.forwardVel + (hScale * 2.5)
			end
        end
        if (m.forwardVel < 0) then
            m.forwardVel = 0
        end
    end

    m.vel.x = m.vel.x * hScale
    m.vel.z = m.vel.z * hScale
end

function mario_on_set_action(m)
	if m.action == ACT_TWIRLING then
        m.vel.y = m.vel.y + 6
	elseif m.action == ACT_LONG_JUMP then
		m.vel.y = m.vel.y + 4
	elseif m.action == ACT_EMERGE_FROM_PIPE then
		m.vel.y = m.vel.y + 10
    end
	if m.action == ACT_WALKING and m.forwardVel < 16 and (m.prevAction == ACT_IDLE or m.prevAction == ACT_PANTING or m.prevAction == ACT_DECELERATING or m.prevAction == ACT_BRAKING or m.prevAction == ACT_BRAKING_STOP)  then
		mario_set_forward_vel(m, 16)
	end
    if m.action == ACT_GROUND_POUND then
		return set_mario_action(m, ACT_GROUND_POUND_OLD, 0)
    elseif m.action == ACT_BRAKING then
		return set_mario_action(m, ACT_IDLE, 0)
    end
end

function mario_update(m)
    local e = gStateExtras[m.playerIndex]

	if m.action == ACT_START_CROUCHING or m.action == ACT_CROUCH_SLIDE or m.action == ACT_STOP_CROUCHING then
		if m.actionTimer == 0 then
			e.animFrame = 0
		end
		set_mario_animation(m, MARIO_ANIM_START_CROUCHING)
		set_anim_to_frame(m, e.animFrame)
		if m.action == ACT_START_CROUCHING then
			if e.animFrame > 2 then
				set_anim_to_frame(m, 3)
				return set_mario_action(m, ACT_CROUCHING, 0)
			end
		elseif m.action == ACT_CROUCH_SLIDE then
			if e.animFrame > 2 then
				set_anim_to_frame(m, 3)
			end
		elseif m.action == ACT_STOP_CROUCHING or m.action == ACT_STOP_CRAWLING then
			if e.animFrame <= 0 then
				return set_mario_action(m, ACT_IDLE, 0)
			end
		end
		e.animFrame = e.animFrame + 1
		m.actionTimer = m.actionTimer + 1
	end
	if m.action == ACT_STOP_CRAWLING then
		if m.marioObj.header.gfx.animInfo.animFrame > 2 then
			return set_mario_action(m, ACT_CROUCHING, 0)
		end
	end
	if m.action == ACT_CROUCHING then
		set_mario_animation(m, MARIO_ANIM_START_CROUCHING)
		set_anim_to_frame(m, 3)
	elseif m.action == ACT_BUTT_SLIDE or m.action == ACT_BUTT_SLIDE_AIR then
		set_mario_animation(m, MARIO_ANIM_SLIDE_MOTIONLESS)
	elseif m.action == ACT_TRIPLE_JUMP or m.action == ACT_SPECIAL_TRIPLE_JUMP then
		return set_mario_action(m, ACT_TWIRLING, 0)
	elseif m.action == ACT_BACKFLIP_LAND then
		return set_mario_action(m, ACT_DOUBLE_JUMP_LAND_STOP, 0)
	elseif m.action == ACT_PUNCHING or m.action == ACT_MOVE_PUNCHING then
		if m.actionArg == 3 then
			if m.action == ACT_PUNCHING then
				return set_mario_action(m, ACT_PUNCHING, 6)
			else
				return set_mario_action(m, ACT_MOVE_PUNCHING, 6)
			end
		end
	end
	if m.action == ACT_JUMP or m.action == ACT_DOUBLE_JUMP or m.action == ACT_TRIPLE_JUMP_OLD or m.action == ACT_BACKFLIP or m.action == ACT_SIDE_FLIP or m.action == ACT_DIVE or m.action == ACT_JUMP_KICK or m.action == ACT_BACKWARD_ROLLOUT or m.action == ACT_FORWARD_ROLLOUT or m.action == ACT_WATER_JUMP or m.action == ACT_WALL_KICK_AIR then
        m.vel.y = m.vel.y + 0.8
    end
    if m.action == ACT_WALKING then
        m.marioBodyState.torsoAngle.x = 0
        m.marioBodyState.torsoAngle.z = 0
    end
    m.marioBodyState.capState = MARIO_HAS_DEFAULT_CAP_ON
    if m.action == ACT_SHOT_FROM_CANNON then
        m.flags = m.flags | MARIO_WING_CAP
    end
	if (m.action & ACT_FLAG_AIR) == 0 then
		m.flags = m.flags & ~MARIO_WING_CAP
	end
    if m.marioBodyState.wingFlutter == 1 then
		m.vel.y = m.vel.y - 2
    end
	if m.action == ACT_IDLE then
		m.actionTimer = m.actionTimer + 1
	end
	if (m.action & ACT_FLAG_SWIMMING) == 0 then
		if m.health > 0x100 then
			if m.health < 0x800 then
				e.healTimer = e.healTimer - 1
				if e.healTimer < 0 then
					m.health = m.health + 0x100
					e.healTimer = 120
				end
			elseif m.health > 0x800 then
				e.healTimer = 120
			end
		end
	end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)
hook_event(HOOK_ON_SET_MARIO_ACTION, mario_on_set_action)
hook_event(HOOK_BEFORE_PHYS_STEP, mario_before_phys_step)

hook_mario_action(ACT_GROUND_POUND_OLD, act_ground_pound_old, INT_GROUND_POUND_OR_TWIRL)

