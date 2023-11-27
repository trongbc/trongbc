--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
getgenv().Config = {
    ["StartFarmChest"] = true,
    ["Team"] = "Marines",
    ["TimeReset"] = 5, -- No Edit
    ["White Screen"] = false,
    ["Stop The God's Chalice"] = true,
    ["Stop The Fist of Darkness"] = true,
    ["HopServer"] = {
        ["Enable"] = true,
        ["BypassServer"] = true,
        ["Region"] = "Singapore"
    },
    ["Server Discord"] = "https://discord.gg/mFzWdBUn45"
}
repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/trongbc/Free-Script/main/Chest-Farm/README.md"))()
