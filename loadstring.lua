local games = {
    {
        Name = "Tha Bronx 3",
        PlaceIds = {16472538603, 18642421777, 128899661081075},
        Loader = "https://api.luarmor.net/files/v4/loaders/c06afd57bf91d67e081433f088957454.lua",
    },
    {
        Name = "Grow a Chicken Fighter",
        PlaceIds = {94939256104840, 94640181989498},
        Loader = "https://api.luarmor.net/files/v4/loaders/b35e05c12116797f0b0a336887b124d2.lua",
    },
}

for _, entry in ipairs(games) do
    if table.find(entry.PlaceIds or {}, game.PlaceId) then
        local ok = pcall(function()
            loadstring(game:HttpGet(entry.Loader))()
        end)
        if not ok then warn("[X-Ro] Failed to load.") end
        return
    end
end
