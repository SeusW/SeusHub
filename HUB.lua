local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
Title = "Seus Hub",
Style = 3,
SizeX = 425,
SizeY = 235,
Theme = "Dark"
})

local Main = UI.New({Title = "Main"})

Main.Slider({Text = "WalkSpeed", Callback = function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value end, Min = 16, Max = 100, Def = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed})
Main.Slider({Text = "Jump Power", Callback = function(value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = value end, Min = 50, Max = 150, Def = game.Players.LocalPlayer.Character.Humanoid.JumpPower})

wait(0.5)

if game.PlaceId == 5346447287 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SeusW/SeusHub/main/TappingGod.lua"))()
elseif game.PlaceId == 0 then
  
end