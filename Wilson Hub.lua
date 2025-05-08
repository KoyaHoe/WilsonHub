local success, Games = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/KoyaHoe/WilsonHub/main/GamesList.lua"))()
end)

if success and type(Games) == "table" then
    local Execute = Games[game.PlaceId]
    if Execute then
        print("Cargando script para PlaceId: " .. game.PlaceId)
        loadstring(game:HttpGet(Execute))()
    else
        warn("No se encontró un script para este PlaceId: " .. game.PlaceId)
    end
else
    warn("No se pudo cargar la lista de juegos. Verifica la URL o tu conexión a internet.")
end
