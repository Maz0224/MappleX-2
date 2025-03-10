local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Mapple X2",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Mapple X2",
   LoadingSubtitle = "Universal Script 📌",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Mapple X2 | Key System",
      Subtitle = "Powered By Rayfield",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "MX2KEY", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"mx2"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- // Player Gui // --
local PlayerTab = Window:CreateTab("Player", "user")
local Section = PlayerTab:CreateSection("Movement")

local SpeedSlider = PlayerTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value	
   end,
})

local JumpSlider = PlayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Jump Power",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value	
   end,
})

local Divider = PlayerTab:CreateDivider()

local Button = PlayerTab:CreateButton({
   Name = "Reset",
   Callback = function()
SpeedSlider:Set(16) -- The new slider integer value
JumpSlider:Set(50) -- The new slider integer value
   end,
})

local Section = PlayerTab:CreateSection("Control")

local Button = PlayerTab:CreateButton({
   Name = "Jump",
   Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.Jump = true
   end,
})
-- // Button Divider

local Button = PlayerTab:CreateButton({
   Name = "Sit",
   Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.Sit = true
   end,
})

local Toggle = PlayerTab:CreateToggle({
   Name = "Auto Rotate",
   CurrentValue = true,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.AutoRotate = Value
   end,
})
