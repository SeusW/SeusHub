local Main = UI.New({Title = "Main"})

Main.Slider({Text = "WalkSpeed", Callback = function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value end, Min = 16, Max = 100, Def = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed})
Main.Slider({Text = "Jump Power", Callback = function(value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = value end, Min = 50, Max = 150, Def = game.Players.LocalPlayer.Character.Humanoid.JumpPower})
