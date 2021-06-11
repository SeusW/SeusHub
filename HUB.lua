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
Main.Button({Text = "Discord: GaJ25jQhzx"})

if game.PlaceId == 5346447287 then
  local TG = UI.New({Title = "Tapping Gods"})

  TG.Toggle({Text = "Auto TAP", Callback = function(value) if TAP == false then TAP = true  else TAP = false end while TAP == true do wait() game:GetService("ReplicatedStorage").Events.Tap:FireServer() end end, Enabled = false})
  TG.Toggle({Text = "Auto Rebirth", Callback = function(value) if AR == false then AR = true else AR = false end while AR == true do wait() local args = {[1] = RValue,} game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args)) end end, Enabled = false})

  TG.Dropdown({
    Text = "Choose an Rebirth Amount",
    Callback = function(value)
      if value == "1" then value = 1
      elseif value == "5" then value = 5
      elseif value == "10" then value = 10
      elseif value == "50" then value = 50
      elseif value == "100" then value = 100
      elseif value == "250" then value = 250
      elseif value == "500" then value = 500
      elseif value == "1k" then value = 1000 
      elseif value == "5k" then value = 5000 
      elseif value == "10k" then value = 10000 
      elseif value == "25k" then value = 25000
      elseif value == "69k" then value = 69000
      elseif value == "100k" then value = 100000
      elseif value == "400k" then value = 400000
      elseif value == "1m" then value = 1000000
      elseif value == "12m" then value = 12000000
      elseif value == "38m" then value = 38000000
      elseif value == "90m" then value = 90000000
      elseif value == "190m" then value = 190000000
      elseif value == "590m" then value = 590000000
      elseif value == "1.7b" then value = 1700000000
      elseif value == "5.3b" then value = 5300000000
     end
    RValue = value
  end,
  Options = {"1", "5", "10", "50", "100", "250", "500", "1k", "5k", "10k", "25k", "69k", "100k", "400k", "1m", "12m", "38m", "90m", "190m", "590m", "1.7b", "5.3b"}
  })
elseif game.PlaceId == 0 then

end

