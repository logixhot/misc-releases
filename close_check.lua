getgenv().close_check = true

game:GetService('RunService').Stepped:connect(function()
   if getgenv().close_check then
           for i,plr in pairs(game.Players:GetPlayers()) do
               magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude
               if magnitude < 15 and plr.Name ~= game.Players.LocalPlayer.Name then
                   print(magnitude .. " | ".. plr.Name)
           end
       end
   end
end)
