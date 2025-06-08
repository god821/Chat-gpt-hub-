print("✅ GitHub script carregado com sucesso!")

local player = game:GetService("Players").LocalPlayer
if player then
    local gui = Instance.new("Hint")
    gui.Text = "✅ Script remoto rodando com sucesso!"
    gui.Parent = player:WaitForChild("PlayerGui")
end
