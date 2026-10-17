local function startCaption()
    local Players = game:GetService("Players")
    local Debris = game:GetService("Debris")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local caption = player.PlayerGui.MainUI.MainFrame.Caption
    caption.Visible = true
    caption.Text = ""
    caption.TextColor3 = Color3.new(1,0,0)
    
    local function SoundHumanoid(Sound, Volume)
      local sound = Instance.new("Sound")
      local humroot = character.HumanoidRootPart
    
      sound.SoundId = Sound
      sound.Volume = Volume
      sound.Parent = humroot
      sound:Play()
    
      Debris:AddItem(sound, sound.TimeLength+5)
    end
    local function WriteLine(Message)
    	for i = 1,#Message,1 do
    		task.wait(0.05)
    		caption.Text = string.sub(Message,1,i)
        SoundHumanoid("rbxassetid://76964186288473", 10)
    	end
    end
    
    SoundHumanoid("rbxassetid://101797982999673", 5)
    WriteLine("Hardcore Initiated")
    task.wait(3)
    
    caption.Text = ""
    WriteLine("Recreated by @thedarli, this mod (script) recreate old hardcore")
    
    task.wait(3)
    
    caption.Text = ""
    WriteLine("Good luck!")
    
    task.wait(3)
    
    caption.Text = ""
    
    task.wait(1)
    
    local part = Instance.new("ImageLabel")
    part.Name = "Kotost"
    part.Parent = caption
    
    part.Size = UDim2.new(1,0,2,0)
    part.Position = UDim2.new(0,0,-0.5,0)
    part.Image = "rbxassetid://105940477164444"
    part.ScaleType = Enum.ScaleType.Fit
    part.BackgroundTransparency = 1
    
    SoundHumanoid("rbxassetid://105330340607642", 5)
    
    task.wait(3)
    
    part:Destroy()
end

local lockDetect = false

game.ReplicatedStorage.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    if lockDetect == false then
        lockDetect = true
        startCaption()
    else
      lockDetect = true
    end
end)
