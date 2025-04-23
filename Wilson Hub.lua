local Games = loadstring(game:HttpGet("http://raw.githubusercontent.com/KoyaHoe/WilsonHub/main/GamesList.lua"))()

for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
    end
end
-- By Speed Hub X (we stealed 'em)
