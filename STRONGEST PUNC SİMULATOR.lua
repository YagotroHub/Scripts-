local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Yagotro Hub", "BloodTheme")
--Main
local Tab = Window:NewTab("Farm")
local MainSection = Tab:NewSection("Auto Farm")


MainSection:NewButton("Auto Collect Orbs", "Auto Collect Orbs", function()
Delay = 0.5
AutoTeleport = true 

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/StrongestPunch"))()
end)

MainSection:NewButton("Server Hop", "Server Hop!", function()
    local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Next; repeat
   local Servers = ListServers(Next)
   for i,v in next, Servers.data do
       if v.playing < v.maxPlayers and v.id ~= _id then
           local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
           if s then break end
       end
   end
   
   Next = Servers.nextPageCursor
until not Next
end)


local Tab = Window:NewTab("Creators")
local MainSection = Tab:NewSection("Hi!")