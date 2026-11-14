# 🏰 Carcassonne Scorer (Big Box)
> A web-based score tracker for Carcassonne with the Big Box expansions. It runs entirely in the browser, with no accounts, no backend and no database.

**Live version:** https://cooper645.github.io/carcassonne-scorer/

## Features

- **Pick your expansions** at setup (or change them mid-game _{not recommended though}_), and the scoring and tracking adapt.
- **Photo scoring board:** your own `board.jpg` with meeple, messenger and robber tokens drawn on top, plus a one-time 50-space calibration. This can be hidden to make using this on smaller screens easier.
- **Points by source:** every score is tagged City, Road, Field, Monastery, Garden, Message, Magician/Witch or Other, with a bar and chips on each player card and a results table.
- **Score helper:** works out city, road, monastery, garden and field points, including Cathedral, Inn and Pig modifiers.
- **Trade goods:** Cloth, Barrel and Wheat counters, with a 10-point end bonus for whoever holds the most of each (ties all get it).
- **Gold:** gold bar counter, scored at the end by tier.
- **Messengers:** separate Meeple and Messenger tracks, with dark-space alerts every 5 points.
- **Robbers:** attach to an opponent's track and steal half the points (rounded up) when it next scores.
- **Final Scoring:** combines tracks _(Meeple & Messenger)_, adds goods and gold bonuses and shows the winner.
- Undo, a game log, and automatic saving in your browser

## Supported expansions

| Expansion | What the app does |
|-----------|-------------------|
| The River | Setup only, nothing to score |
| The Abbot | Adds the Garden scoring source |
| Inns & Cathedrals | Inn and Cathedral options in the Score helper |
| Traders & Builders | 🧵Cloth, 🛢️Barrel and 🌾Wheat counters, end bonus, 🐷Pig in the Score helper |
| The Flying Machines | No scoring, nothing tracked |
| The Messengers | Second track and dark-space Message draws |
| The Ferries | No scoring, nothing tracked |
| The Gold Mines | 🪙Gold bar counter, added at Final Scoring |
| Magician & Witch | Manual +/- adjustment source |
| The Robbers | 🦹Robber placement and point stealing |
| The Crop Circles | No scoring, nothing tracked |

## How to use

1. Add 2 or more players, pick a colour for each, tick the expansions you're playing, then click **Start Game**.
2. First time only: click **📍 Calibrate photo board** and click the centre of each of the 50 spaces in order, starting with the start space.
3. Choose a player, choose where the points came from, enter the points (or tap a quick button or use the Score helper), then click **Add Points**.
4. Adjust Cloth, Barrels, Wheat and Gold with the − / + buttons on each player card as they are collected.
5. Use **Place Robber** on a player card to attach a robber to an opponent's track. New banner above the Game Log to select meeple to stalk (can be recalled if placed in error).
6. At the end of the game, click **Final Scoring**. The confirmation lists the bonuses that will be added.
7. Enter any remaining end-game points (fields, unfinished features), then check the results table.

## Scoring rules used

- **Trade goods:** 10 points to the player with the most Cloth, 10 for Barrels and 10 for Wheat. Tied players each get the 10. Nothing is awarded if nobody holds any.
- **Gold bars:** 1-3 bars score 1 point each, 4-6 score 2 each, 7-9 score 3 each, 10+ score 4 each.
- **Robbers:** steal half the points scored (rounded up) on the track they sit on, then return to their owner.
- **Dark spaces:** with Messengers on, landing on a multiple of 5 on your own turn means drawing a Message tile.

## Fork and host your own

You're welcome to fork this repo and run your own copy, or simply pull this and get the latest updates as they occur.

1. Click **Fork** at the top right of this repo.
2. In your fork, go to **Settings → Pages**, set the source to the `main` branch and `/ (root)` folder, then click **Save**.
3. After a minute or two your copy is live at `https://YOUR-USERNAME.github.io/carcassonne-scorer/`.
4. Replace `board.jpg` with a top-down photo of **your own** scoring board (keep the file name `board.jpg`). Use **Add file → Upload files** and drag it in.
5. Open your site, start a game and click **📍 Calibrate photo board** to mark the 50 spaces on your photo.

If you don't have a photo, delete `board.jpg` or leave it out and the app uses its built-in drawn board.

Please only upload images you have the right to use.

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
| `board.jpg` | Photo of the scoring board used as the track background |
| `Dockerfile` | Builds a small Nginx container serving the app |
| `docker-compose.yml` | Runs the container on port 8085 |
| `LICENCE` | Licensing |
| `README.md` | This ReadMe and basic instructions for use |

## Notes

- Game data and board calibration live in your browser's local storage, so they are not shared between devices. Everyone should watch one screen.
- Clearing site data in your browser will delete a game in progress and the saved calibration.
- To share one calibration across devices, click **Copy positions** and paste the result into `BAKED_SPOTS` near the top of the script in `index.html`.
- Scoring rules are based on the Big Box rulebook and may not match your rules. I believe this is the C3 rules.
