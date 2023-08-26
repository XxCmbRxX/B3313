-- Brought to you by Floralys

local lastLobby = 1
local gb = 255
local switch = false

local function on_hud_render()
    if is_game_paused() then
        djui_hud_set_resolution(RESOLUTION_N64)
        djui_hud_set_font(FONT_NORMAL)
        djui_hud_set_color(0, 0, 0, 128)
        djui_hud_print_text("PRESS Y TO FAST TRAVEL", djui_hud_get_screen_width()/2 - djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/5 + 0.5, djui_hud_get_screen_height()/8 * 7.25 + 0.5, 0.4)
        djui_hud_render_rect(djui_hud_get_screen_width()/2 - djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/5 + 0.5, djui_hud_get_screen_height()/8 * 7.65 + 0.5, djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/2.5, 1)
        djui_hud_set_color(255, gb, gb, 255)
        djui_hud_print_text("PRESS Y TO FAST TRAVEL", djui_hud_get_screen_width()/2 - djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/5, djui_hud_get_screen_height()/8 * 7.25, 0.4)
        djui_hud_render_rect(djui_hud_get_screen_width()/2 - djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/5, djui_hud_get_screen_height()/8 * 7.65, djui_hud_measure_text("PRESS Y TO FAST TRAVEL")/2.5, 1)
    end

    if gb >= 255 then
        switch = true
    elseif gb <= 0 then
        switch = false
    end

    if switch then
        gb = gb - 5
    elseif not switch then
        gb = gb + 5
    end
end

---@param m MarioState
local function mario_update(m)
    if gNetworkPlayers[m.playerIndex].currLevelNum == LEVEL_CASTLE_GROUNDS and gNetworkPlayers[m.playerIndex].currAreaIndex == 4 then
        lastLobby = 1
    elseif gNetworkPlayers[m.playerIndex].currLevelNum == LEVEL_CASTLE_GROUNDS and gNetworkPlayers[m.playerIndex].currAreaIndex == 3 then
        lastLobby = 2
    elseif gNetworkPlayers[m.playerIndex].currLevelNum == LEVEL_CASTLE_GROUNDS and gNetworkPlayers[m.playerIndex].currAreaIndex == 2 then
        lastLobby = 3
    end

    if is_game_paused() then
        if m.controller.buttonPressed & Y_BUTTON ~= 0 then
            if lastLobby == 1 then
                warp_to_level(16, 3, 1)
            elseif lastLobby == 2 then
                warp_to_level(16, 2, 1)
            elseif lastLobby == 3 then
                warp_to_level(16, 4, 1)
            end
        end
    end
end

hook_event(HOOK_ON_HUD_RENDER, on_hud_render)
hook_event(HOOK_MARIO_UPDATE, mario_update)