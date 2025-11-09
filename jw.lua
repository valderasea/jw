local gui = Instance.new("ScreenGui")
gui.Name = "ValL_Recorder_UI"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 120, 0, 50)
button.Position = UDim2.new(0.5, -60, 0.9, 0)
button.AnchorPoint = Vector2.new(0.5, 0.5)
button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
button.Text = "🔴 Start Record"
button.Font = Enum.Font.GothamBold
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 18
button.Parent = gui

local corner = Instance.new("UICorner", button)
corner.CornerRadius = UDim.new(0, 12)

-- Hover animation
button.MouseEnter:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
end)
button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
end)

-- Click toggle
button.MouseButton1Click:Connect(function()
    if not recording then
        startRecord()
        button.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
        button.Text = "🟢 Stop Record"
    else
        stopRecord()
        button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        button.Text = "🔴 Start Record"
    end
end)

print("✅ Recorder siap! Tekan tombol merah di layar untuk mulai/stop merekam.")
print("💾 File akan disimpan di /Delta/Workspace/" .. outputFile)
