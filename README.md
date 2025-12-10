# Instagram Reels Reposter Bot

Automatically monitors Instagram DMs and reposts reels.

## Setup

1. **Install dependencies:**
```bash
pip install Appium-Python-Client selenium
```

2. **Start Appium server:**
```bash
appium
```

3. **Log in to Instagram manually:**
   - Open Instagram on your emulator (Pixel 9 Pro API 35)
   - Log in as `sugar.reels`
   - Keep it logged in

4. **Run the bot:**
```bash
python bot.py
```

## How it works

1. Connects to Instagram app on your emulator
2. Checks DMs from `@teozahar` every 60 seconds
3. When it finds a reel:
   - Opens it
   - Saves it to device
   - Creates new reel post
   - Posts it
4. Repeats forever

## Configuration

Edit `bot.py` at the top to change:
- `BOT_USERNAME` - Your bot account
- `BOT_PASSWORD` - Bot password
- `YOUR_USERNAME` - Who sends you reels
- `CHECK_INTERVAL` - How often to check (seconds)

## Stop the bot

Press `Ctrl+C`

That's it! 🚀
