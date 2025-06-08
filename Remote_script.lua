local GITHUB_RAW_URL = "https://raw.githubusercontent.com/god821/Chat-gpt-hub-/main/Remote_script.lua"

local success, result = pcall(function()
    return loadstring(game:HttpGet(GITHUB_RAW_URL))()
end)

if success and type(result) == "table" then
    print("🔗 Script carregado do GitHub com sucesso!")
    print("🔔 Notificação:", result.notify or "Nenhuma")

    local runSuccess, err = pcall(function()
        loadstring(result.execute)()
    end)

    if not runSuccess then
        warn("❌ Erro ao executar código:", err)
    end
else
    warn("❌ Falha ao carregar o script remoto do GitHub!")
end
