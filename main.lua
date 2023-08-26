-- name:\\#F78AF5\\B\\#F94A36\\3\\#4C5BFF\\3\\#EDD83D\\1\\#16C31C\\3\\#ffffff\\v0.7
-- description: Original romhack by ChrisRLilo (Chrisbrutalagresion) \n\Ported by TikalSM64 and Blocky.cmd \n\n Help fixing by Fearl and Asra \n\n Moddable hud by Sunk \n\ B3313 Moveset by ER1CK \n\ Epilepsy Warning by Ale64, Fast travel implemented by Floralys \n\n Help - MrNeedleMouse.z64 \n\ enjoy.
-- incompatible: romhack

gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = false
gLevelValues.fixCollisionBugsGroundPoundBonks = false
gLevelValues.fixCollisionBugsPickBestWall = false
gServerSettings.skipIntro = 1

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(1)
camera_romhack_allow_centering(0)
camera_set_use_course_specific_settings(false)

gLevelValues.wingCapDurationTotwc = 1
gLevelValues.metalCapDurationCotmc = 1
gLevelValues.vanishCapDurationVcutm = 1

gLevelValues.entryLevel = LEVEL_THI

smlua_audio_utils_replace_sequence(0x01, 0x22, 75, "01_Seq_custom")
smlua_audio_utils_replace_sequence(0x02, 0x11, 75, "02_Seq_custom")
smlua_audio_utils_replace_sequence(0x03, 0x22, 75, "03_Seq_custom")
smlua_audio_utils_replace_sequence(0x04, 0x0E, 75, "04_Seq_custom")
smlua_audio_utils_replace_sequence(0x05, 0x13, 75, "05_Seq_custom")
smlua_audio_utils_replace_sequence(0x06, 0x0F, 75, "06_Seq_custom")
smlua_audio_utils_replace_sequence(0x07, 0x12, 75, "07_Seq_custom")
smlua_audio_utils_replace_sequence(0x08, 0x0B, 75, "08_Seq_custom")
smlua_audio_utils_replace_sequence(0x09, 0x22, 75, "09_Seq_custom")
smlua_audio_utils_replace_sequence(0x0A, 0x21, 75, "0A_Seq_custom")
smlua_audio_utils_replace_sequence(0x0B, 0x14, 75, "0B_Seq_custom")
smlua_audio_utils_replace_sequence(0x0C, 0x15, 75, "0C_Seq_custom")
smlua_audio_utils_replace_sequence(0x0D, 0x16, 75, "0D_Seq_custom")
smlua_audio_utils_replace_sequence(0x0E, 0x0D, 75, "0E_Seq_custom")
smlua_audio_utils_replace_sequence(0x0F, 0x18, 75, "0F_Seq_custom")
smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")
smlua_audio_utils_replace_sequence(0x11, 0x19, 75, "11_Seq_custom")
smlua_audio_utils_replace_sequence(0x12, 0x25, 75, "12_Seq_custom")
smlua_audio_utils_replace_sequence(0x13, 0x21, 75, "13_Seq_custom")
smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")
smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")
smlua_audio_utils_replace_sequence(0x16, 0x1B, 75, "16_Seq_custom")
smlua_audio_utils_replace_sequence(0x17, 0x1A, 75, "17_Seq_custom")
smlua_audio_utils_replace_sequence(0x19, 0x19, 75, "19_Seq_custom")
smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")
smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")
smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")
smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")
smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "1F_Seq_custom")
smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")
smlua_audio_utils_replace_sequence(0x21, 0x24, 75, "21_Seq_custom")
smlua_audio_utils_replace_sequence(0x25, 0x0F, 75, "25_Seq_custom")
smlua_audio_utils_replace_sequence(0x26, 0x13, 75, "26_Seq_custom")
smlua_audio_utils_replace_sequence(0x27, 0x25, 75, "27_Seq_custom")
smlua_audio_utils_replace_sequence(0x2A, 0x25, 75, "2A_Seq_custom")
smlua_audio_utils_replace_sequence(0x2B, 0x11, 75, "2B_Seq_custom")
smlua_audio_utils_replace_sequence(0x2C, 0x0C, 75, "2C_Seq_custom")
smlua_audio_utils_replace_sequence(0x33, 0x1E, 75, "33_Seq_custom")
smlua_audio_utils_replace_sequence(0x34, 0x0E, 75, "34_Seq_custom")
smlua_audio_utils_replace_sequence(0x35, 0x0C, 75, "35_Seq_custom")
smlua_audio_utils_replace_sequence(0x36, 0x25, 75, "36_Seq_custom")
smlua_audio_utils_replace_sequence(0x38, 0x14, 75, "38_Seq_custom")
smlua_audio_utils_replace_sequence(0x3A, 0x0E, 75, "3A_Seq_custom")
smlua_audio_utils_replace_sequence(0x3B, 0x25, 75, "3B_Seq_custom")
smlua_audio_utils_replace_sequence(0x3C, 0x14, 75, "3C_Seq_custom")
smlua_audio_utils_replace_sequence(0x3D, 0x24, 75, "3D_Seq_custom")
smlua_audio_utils_replace_sequence(0x3E, 0x11, 75, "3E_Seq_custom")
smlua_audio_utils_replace_sequence(0x3F, 0x1A, 75, "3F_Seq_custom")
smlua_audio_utils_replace_sequence(0x40, 0x1E, 75, "40_Seq_custom")
smlua_audio_utils_replace_sequence(0x41, 0x1C, 75, "41_Seq_custom")
smlua_audio_utils_replace_sequence(0x44, 0x0C, 75, "44_Seq_custom")
smlua_audio_utils_replace_sequence(0x45, 0x13, 75, "45_Seq_custom")
smlua_audio_utils_replace_sequence(0x4A, 0x13, 75, "4A_Seq_custom")
smlua_audio_utils_replace_sequence(0x4B, 0x0E, 75, "4B_Seq_custom")
smlua_audio_utils_replace_sequence(0x4C, 0x15, 75, "4C_Seq_custom")
smlua_audio_utils_replace_sequence(0x4D, 0x25, 75, "4D_Seq_custom")
smlua_audio_utils_replace_sequence(0x4E, 0x0E, 75, "4E_Seq_custom")
smlua_audio_utils_replace_sequence(0x50, 0x0C, 75, "50_Seq_custom")
smlua_audio_utils_replace_sequence(0x51, 0x25, 75, "51_Seq_custom")
smlua_audio_utils_replace_sequence(0x52, 0x25, 75, "52_Seq_custom")

vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, 3030, 4500, -4600)
vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 7100, -1300, -6000)
vec3f_set(gLevelValues.starPositions.KingBobombStarPos, 8256.0, 7504.0, -12072.0)
vec3f_set(gLevelValues.starPositions.KingWhompStarPos, 5880.0, 1333.0, -6896.0)
vec3f_set(gLevelValues.starPositions.EyerockStarPos, 1465.0, 595.0, -6676.0)
vec3f_set(gLevelValues.starPositions.BigBullyStarPos, -6934.0, 805.0, -1260.0)
vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, -610.0, 5539.0, 166.0)
vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, 0.0, 0.0, 0.0)
vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, 3176.0, 2945.0, -8506.0)
vec3f_set(gLevelValues.starPositions.WigglerStarPos, 10400.0, 1548.0, -460.0)
vec3f_set(gLevelValues.starPositions.PssSlideStarPos, -6358.0, -4300.0, 4700.0)
vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339.0, -5700.0, -6774.0)
vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800.0, -2500.0, -1700.0)
vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, -21196.0, 6322.0, -12547.0)
vec3f_set(gLevelValues.starPositions.KleptoStarPos, 1795.0, 451.0, -10902.0)
vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -22394.0, 8418.0, -16318.0)
vec3f_set(gLevelValues.starPositions.MrIStarPos, -11882.0, 785.0, -4157.0)
vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, 9330.0, 5973.0, -11664.0)
vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, -11664.0, 0.0, 0.0)

hook_event(HOOK_USE_ACT_SELECT, function () return false end)

local custom_hud = true

---@param text string
local function append_zero_and_format_negative(text)
    local length = #text
    if length == 1 then
        text = "0" .. text
    elseif text:sub(1, 1) == "-" then
        text = "M" .. text:sub(2, length)
    end
    return text
end

-- Custom hud
local function hud_render()
    -- Death timer
    ---@type MarioState
    local m = gMarioStates[0]
    ---@type NetworkPlayer
    local np = gNetworkPlayers[0]
    local hud_display_flags = hud_get_value(HUD_DISPLAY_FLAGS)
    if np.currLevelNum == LEVEL_PSS or (np.currLevelNum == LEVEL_SL and np.currActNum == 5) then
        if m.action ~= ACT_FALL_AFTER_STAR_GRAB then
            death_timer = death_timer - 1
            if death_timer <= 0 then
                mario_drop_held_object(m)
                m.health = 255
                death_timer = 0
            end
            hud_set_value(HUD_DISPLAY_FLAGS, (hud_display_flags | HUD_DISPLAY_FLAGS_TIMER))
            hud_set_value(HUD_DISPLAY_TIMER, death_timer)
        end
    end

    -- Daredevil
    m.health = daredevil and math.min(m.health, 256) or m.health

    -- ktq
    if not custom_hud then return end
    -- Custom hud
    hud_hide()
    -- Lives
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_font(FONT_HUD)
    djui_hud_set_color(255, 255, 255, 255)
    local x = 25
    local y = 15
    djui_hud_render_texture(gTextures.mario_head, x, y, 1, 1)
    djui_hud_print_text("x", x + 16, y, 1)
    local lives_text = append_zero_and_format_negative(tostring(m.numLives))
    djui_hud_print_text(lives_text, x + 31, y, 1)
    -- Stars
    y = 15
    x = 280
    djui_hud_render_texture(gTextures.star, x, y, 1, 1)
    djui_hud_print_text("x", x + 16, y, 1)
    djui_hud_print_text(append_zero_and_format_negative(tostring(m.numStars)), x + 31, y, 1)
    -- Coins
    y = 30
    x = 280
    djui_hud_render_texture(gTextures.coin, x, y, 1, 1)
    djui_hud_print_text("x", x + 16, y, 1)
    djui_hud_print_text(append_zero_and_format_negative(tostring(m.numCoins)), x + 31, y, 1)
    x = djui_hud_get_screen_width() - 60
    y = 5
    -- Power meter
    x =  160
    hud_render_power_meter(m.health, x, y, 60, 60)
    -- Caps
    if m.flags & MARIO_SPECIAL_CAPS ~= 0 then
        x = x + 18
        y = 60
        djui_hud_print_text("CAP", x, y, 1)
        x = djui_hud_get_screen_width()
        y = 80
        local cap_timer_text = tostring(m.capTimer)
        local cap_timer_text_length = djui_hud_measure_text(cap_timer_text)
        djui_hud_print_text(cap_timer_text, (x - cap_timer_text_length) - 9, y, 1)
    end
    -- Death timer hud
    if activated then
        local LEFT_text_length = djui_hud_measure_text("LEFT")
        x = djui_hud_get_screen_width() * 0.5 - (LEFT_text_length * 0.5)
        y = 24
        djui_hud_print_text("LEFT", x, y, 1)
        x = x - 3
        y = 42
        local time = hud_get_value(HUD_DISPLAY_TIMER)
        local seconds = append_zero_and_format_negative(tostring(time // 30))
        local milliseconds = append_zero_and_format_negative(tostring((time % 30) * 3)) -- Decimal expansion
        djui_hud_print_text("0" .. seconds, x, y, 1)
        djui_hud_print_text('"', x + 37, y - 6, 1)
        djui_hud_print_text(milliseconds, x + 48, y, 1)
    end
    -- ktq hud
    if np.currLevelNum == LEVEL_DDD and hud_display_flags & HUD_DISPLAY_FLAGS_TIMER ~= 0 then
        local timer = hud_get_value(HUD_DISPLAY_TIMER)
        local minutes = ("%d"):format((timer / 30) // 60)
        local seconds = append_zero_and_format_negative(tostring(timer // 30))
        local milliseconds = append_zero_and_format_negative(tostring((timer % 30) * 3))-- Decimal expansion
        x = djui_hud_get_screen_width() * 0.5 - 35
        y = djui_hud_get_screen_height() * 0.8
        djui_hud_print_text(minutes, x, y, 1)
        djui_hud_print_text("'", x + 9, y - 6, 1)
        djui_hud_print_text(seconds, x + 19, y, 1)
        djui_hud_print_text('"', x + 43, y - 6, 1)
        djui_hud_print_text(milliseconds, x + 56, y, 1)
    end
end

-- All of C14's acts should go to their own area
local function sync_valid()
    ---@type NetworkPlayer
    local np = gNetworkPlayers[0]

    if np.currLevelNum == LEVEL_TTC then
        if np.currActNum ~= np.currAreaIndex then
            warp_to_level(LEVEL_TTC, np.currActNum, np.currActNum)
        end
    end
end

local last_dialog_position = {x = 0, y = 0, z = 0}
local moved_away = false

---@param m MarioState
local function mario_update(m)
    if m.playerIndex ~= 0 then return end
    -- hack: check last position
    if vec3f_dist(last_dialog_position, m.pos) > 100 then
        moved_away = true
    end

    -- Force freecam to be temporary
    if gNetworkPlayers[0].currLevelNum == LEVEL_ENDING then
        camera_config_enable_free_cam(m.controller.buttonDown & X_BUTTON ~= 0)
    end
end

---@param m MarioState
---@param obj Object
local function allow_interact(m, obj)
    if m.playerIndex ~= 0 then return end
    if obj.oBehParams2ndByte == 0xFF and obj_has_behavior_id(obj, id_bhvDoor) == 1 then
        vec3f_copy(last_dialog_position, m.pos)
        if moved_away and m.action == ACT_WALKING then
            set_mario_action(m, ACT_READING_AUTOMATIC_DIALOG, gBehaviorValues.dialogs.KeyDoor1DontHaveDialog)
            moved_away = false
        end
        return false
    end
    return true
end


hook_event(HOOK_ON_LEVEL_INIT, level_init)
hook_event(HOOK_ON_HUD_RENDER, hud_render)

Bhv_Custom_0x130056bc = hook_behavior(id_Bhv_Custom_0x130056bc, OBJ_LIST_DEFAULT, true, obj_mark_for_deletion, nil)
Bhv_Custom_0x13005708 = hook_behavior(id_Bhv_Custom_0x13005708, OBJ_LIST_DEFAULT, true, obj_mark_for_deletion, nil)


