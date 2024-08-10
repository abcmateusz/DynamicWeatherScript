# Dynamic Weather System for Roblox

This script is designed to bring dynamic weather effects to your Roblox game. It simulates different weather conditions with visual effects like sunlight, rain, and storms.

## What It Does

- **Sunny**: Bright and clear weather.
- **Rainy**: Adds rain with a dimmer lighting.
- **Stormy**: Dark and stormy with rain effects.

## How to Set It Up

1. **Open Roblox Studio**:
   - Launch Roblox Studio and open your game project.

2. **Add the Script**:
   - Go to `ServerScriptService` in the Explorer panel.
   - Right-click on `ServerScriptService`, choose `Insert Object`, and then `Script`.
   - Paste the code from `WeatherSystemScript.lua` into the new script.

3. **Add a Rain Texture**:
   - For the rain effect, it’s recommended to use the rain texture available here: [Rain Particle UPDATED](https://create.roblox.com/store/asset/241942675/Rain-Particle-UPDATED?externalSource=www).
   - Replace `-- Insert Rain Texture Asset ID Here --` in the script with the asset ID from the link above.

## What’s in the Script?

- **`weatherTypes`**: This part sets up different weather conditions:
  - **Sunny**: Bright lighting with no rain.
  - **Rainy**: Dim lighting with rain particles.
  - **Stormy**: Darker lighting with rain particles.

- **`applyWeather(weatherType)`**: Applies the weather settings. Changes lighting and handles rain effects.

- **`testWeather()`**: Cycles through the weather types every 20 seconds for testing.

## How to Use It

Just add the script to your game, and it will start running automatically. It switches between different weather types every 20 seconds. Feel free to tweak the script to suit your needs, like changing how often the weather switches or adding new weather conditions.

## Troubleshooting

- Make sure you’ve replaced the placeholder for the rain texture with the correct asset ID.
- Adjust the lighting settings if needed to fit your game's style.
- If you don’t see the rain effect, check if the `ParticleEmitter` is set up properly.

## License

Feel free to use and modify this script for your Roblox projects. No need for attribution, but it’s appreciated if you let others know where you got it from!

---

Enjoy adding some weather effects to your Roblox game!
---
Author
@abcMateusz
