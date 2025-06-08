return {
    notify = "✅ Teste de conexão bem-sucedido!",
    execute = [[
        -- Teste visual no Roblox
        local plr = game.Players.LocalPlayer
        local chr = plr.Character or plr.CharacterAdded:Wait()

        -- Criar uma Part flutuante em cima do personagem
        local part = Instance.new("Part")
        part.Size = Vector3.new(4, 0.5, 4)
        part.Anchored = true
        part.CanCollide = false
        part.Color = Color3.fromRGB(0, 255, 127)
        part.Material = Enum.Material.Neon
        part.Position = chr.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
        part.Parent = workspace

        -- Mensagem no console
        print("✅ Parte visual criada acima do personagem!")

        -- Notificação Roblox (se tiver handler)
        if setclipboard then
            setclipboard("Teste executado com sucesso!")
        end
    ]]
}
