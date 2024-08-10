local Lighting = game:GetService("Lighting")

local weatherTypes = {
    Sunny = {
        Lighting = {
            Brightness = 2,
            Ambient = Color3.fromRGB(255, 255, 255),
            FogStart = 0,
            FogEnd = 1000,
            ColorShift_Top = Color3.fromRGB(255, 255, 255),
            ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
        },
        Rain = false
    },
    Rainy = {
        Lighting = {
            Brightness = 0.5,
            Ambient = Color3.fromRGB(200, 200, 200),
            FogStart = 0,
            FogEnd = 300,
            ColorShift_Top = Color3.fromRGB(200, 200, 200),
            ColorShift_Bottom = Color3.fromRGB(200, 200, 200)
        },
        Rain = true
    },
    Stormy = {
        Lighting = {
            Brightness = 0.3,
            Ambient = Color3.fromRGB(100, 100, 100),
            FogStart = 0,
            FogEnd = 500,
            ColorShift_Top = Color3.fromRGB(100, 100, 100),
            ColorShift_Bottom = Color3.fromRGB(100, 100, 100)
        },
        Rain = true
    }
}

local function applyWeather(weatherType)
    local weather = weatherTypes[weatherType]
    
    for prop, value in pairs(weather.Lighting) do
        Lighting[prop] = value
    end
    
    if weather.Rain then
        local rain = Instance.new("ParticleEmitter")
        rain.Name = "RainEffect"
        rain.Texture = "rbxassetid://-- Insert Rain Texture Asset ID Here --"
        rain.Size = NumberSequence.new(0.5, 0.5)
        rain.Lifetime = NumberRange.new(1, 2)
        rain.Rate = 1000
        rain.Speed = NumberRange.new(30, 50)
        rain.VelocityInheritance = 0
        rain.Parent = workspace.CurrentCamera
    else
        local existingRain = workspace.CurrentCamera:FindFirstChild("RainEffect")
        if existingRain then
            existingRain:Destroy()
        end
    end
end

local function testWeather()
    local weatherList = {"Sunny", "Rainy", "Stormy"}
    local currentIndex = 1
    
    while true do
        applyWeather(weatherList[currentIndex])
        currentIndex = (currentIndex % #weatherList) + 1
        wait(20)
    end
end

testWeather()
--@abcMateusz
