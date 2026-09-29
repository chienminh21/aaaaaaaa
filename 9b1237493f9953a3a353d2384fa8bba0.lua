local bd88_2 = {
    "381936fee652496a4695e601091a874dc59b4b76c47c8520371a47e253d16535",
    "nill",
    "nill"
}


local x99_msg = string.char(119, 104, 121, 32, 117, 32, 98, 121, 112, 97, 115, 115, 32, 107, 101, 121)

local g_svc = game:GetService("Players")
local p_plr = g_svc.LocalPlayer

local function fetch_client_id()
    if gethwid then
        return gethwid()
    elseif get_hwid then
        return get_hwid()
    elseif syn and syn.get_hwid then
        return syn.get_hwid()
    elseif fluxus and fluxus.get_hwid then
        return fluxus.get_hwid()
    elseif getgenv then
        return getgenv().HWID or getgenv().hwid or ""
    end
    return ""
end

local c_id = string.lower(fetch_client_id())

if c_id ~= "" then
    for k_idx, v_val in ipairs(bd88_2) do
        if c_id == string.lower(v_val) then
            p_plr:Kick(x99_msg)
            break
        end
    end
end
