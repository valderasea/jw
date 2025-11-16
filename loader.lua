local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- BLOK LIST SCRIPT (tinggal tambahin nama + link)
local ScriptList = {
    {"MOUNT YAHAYUK BIASA", "https://raw.githubusercontent.com/valderasea/jw/refs/heads/main/m36.lua.lua"},
    {"MOUNT YAHAYUK PRO", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/yhpro.lua"},
    {"MOUNT KOHARU", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/koharu.lua"},
    {"MOUNT GEMI", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/gemi.lua"},
    {"MOUNT ANEH PRO", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/anehpro.lua"},
    {"KOTA BUKAN GUNUNG", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/ktbg.lua"},
    {"MOUNT PENGANGGURAN", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/pengangguran.lua"},
    {"MOUNT ATIN", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/atin.lua"},
    {"MOUNT RUNIA", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/runia.lua"},
    {"MOUNT DAUN", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/daun.lua"},
    {"MOUNT HMMM", "https://raw.githubusercontent.com/valderasea/jawa/refs/heads/main/hmmm.lua"},
    {"MOUNT FREESTYLE", "https://raw.githubusercontent.com/4kbarrasyii/Mount-Runia/refs/heads/main/ALLCP.lua"},
    {"MOUNT YACAPE", "https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/MOUNT-YACAPE/main.lua"},
    {"MOUNT YNTKTS", "https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/MOUNT-YNTKTS/main.lua"},
    {"MOUNT NIGHTMARE EXPEDITION", "https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/MOUNT-NIGHTMARE-EXPEDITION/main.lua"},
    {"MOUNT BILEK", "https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/MOUNT-BILEK/main.lua"},
    {"MOUNT YUKARI", "https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/MOUNT-YUKARI/main.lua"},
}

--============== UI RAYFIELD ==============--

local Window = Rayfield:CreateWindow({
    Name = "ValL | Autowalk Loader",
    LoadingTitle = "Created By Valdera",
    LoadingSubtitle = "Script Loader",
    Theme = "Amethyst",
})

local Tab = Window:CreateTab("List Autowalk", 4483362458)
Tab:CreateSection("⭕ Pilih Map Untuk Load")

--============== AUTO GENERATE BUTTON ==============--

for _, route in ipairs(ScriptList) do
    Tab:CreateButton({
        Name = " " .. route[1],
        Callback = function()
            Rayfield:Notify({
                Title = "LOADING",
                Content = "Execute " .. route[1] .. "...",
                Duration = 4
            })

            -- Hancurin loader UI dulu
            Rayfield:Destroy()

            -- Load script asli
            loadstring(game:HttpGet(route[2]))()
        end
    })
end

--============== TAB SCRIPT LAIN OPTIONAL ==============--

local Tab2 = Window:CreateTab("Script Lain", 4483362458)
Tab2:CreateSection("⭕ Punya orang gatau work / no")

Tab2:CreateButton({
    Name = "INFINITE YIELD",
    Callback = function()
        Rayfield:Notify({Title="OTW",Content="Loading Admin...",Duration=4})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/valderasea/rosblog/refs/heads/main/ADMIN/main.lua"))()
    end
})
