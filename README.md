# 🏰 Carcassonne Scorer (Messengers & Robbers)

A simple web-based score tracker for Carcassonne with the Messengers and Robbers mini-expansions. It runs entirely in the browser, with no accounts, no backend and no database.

**Live version:** https://cooper645.github.io/carcassonne-scorer/

## Features

- Visual 50-space scoring board with a meeple, messenger and robber token for each player
- Separate Meeple and Messenger score tracks for every player
- Dark space alerts every 5 points, telling you when to draw a Message tile
- Robbers that attach to an opponent's track and steal half the points (rounded up) when that track next scores
- Quick-score buttons for common values (+2, +3, +4, +6, +8, +9)
- Active turn toggle, so Message draws only trigger on your own turn
- Final Scoring mode, which combines Meeple and Messenger scores into one total
- Undo (last 30 actions) and a game log
- Scores are saved in your browser, so a refresh won't lose your game

## How to use

1. Add 2 or more players, pick a colour for each, then click **Start Game**.
2. Choose a player, choose Meeple or Messenger, enter the points (or tap a quick button), then click **Add Points**.
3. When a dark space banner appears, that player draws a Message tile.
4. Use **Place Robber** on a player card to attach their robber to an opponent's track.
5. At the end of the game, click **Final Scoring** to combine all scores.

## Hosting

### Option A: GitHub Pages (no server needed)

1. Go to **Settings → Pages**.
2. Set the source to the `main` branch and the `/ (root)` folder, then click **Save**.
3. The site will be live at `https://YOUR-USERNAME.github.io/carcassonne-scorer/` after a minute or two.

### Option B: Self-host with Docker

```bash
git clone https://github.com/cooper645/carcassonne-scorer.git
cd carcassonne-scorer
docker compose up -d --build
```

Then open `http://YOUR-SERVER-IP:8085`.

To update later:

```bash
git pull
docker compose up -d --build
```

## Project structure

| File | Purpose |
|------|---------|
| `index.html` | The whole app (HTML, CSS and JavaScript) |
| `Dockerfile` | Builds a small Nginx container serving the app |
| `docker-compose.yml` | Runs the container on port 8085 |

## Notes

- Game data lives in your browser's local storage, so it is not shared between devices. Everyone should watch one screen.
- Clearing site data in your browser will delete a game in progress.
- Scoring rules are a simplified take on Messengers & Robbers and may not match the official rules exactly.
