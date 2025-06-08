return {
    notify = "🧪 Teste simples iniciado!",
    execute = [[
        print("✅ Executando código remoto com sucesso!")

        local plr = game.Players.LocalPlayer
        if plr then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Conectado!",
                Text = "Script remoto foi executado com sucesso.",
                Duration = 5
            })
        end
    ]]
}
