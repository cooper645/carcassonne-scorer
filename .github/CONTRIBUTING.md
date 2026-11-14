# Contributing to Carcassonne Scorer

Thank you for your interest in contributing to **Carcassonne Scorer**! Whether you are fixing a bug, adding support for a mini-expansion, or improving the interface, your help is welcome.

## Project Architecture

This project is intentionally lightweight and dependency-free:
- **`index.html`**: Contains the entire application (HTML, CSS, and vanilla JavaScript). There are no build tools, bundlers, or external frameworks required.
- **`board.jpg`**: The default scoring board background image.
- **`Dockerfile` & `docker-compose.yml`**: Used for optional self-hosting via Nginx.

## How to Contribute

### 1. Reporting Bugs or Suggesting Rules
- Before opening a new issue, check existing issues to see if it has already been raised.
- Use the **Bug report** or **Feature or rule request** templates when creating an issue.
- If proposing a scoring change, please mention which edition of the rules you are referencing (e.g., Big Box C3 vs older editions).

### 2. Making Code Changes
1. **Fork** the repository and create a new branch from `main` (e.g., `fix/robber-rounding` or `feat/dragon-expansion`).
2. Open `index.html` directly in your browser or serve the folder locally (for example, using Python's `python3 -m http.server` or VS Code Live Server) to test your changes.
3. Keep changes clean and self-contained within `index.html` without introducing external CDN dependencies so the app continues to work offline.

### 3. Testing Checklist
Before submitting a Pull Request, please verify:
- [ ] **No console errors** in browser developer tools.
- [ ] **Local storage compatibility**: Reloading the page mid-game preserves player scores, expansions, and board calibration cleanly.
- [ ] **Photo board toggle**: The layout works smoothly on both desktop and mobile screens with the photo board visible and hidden.
- [ ] **Licensing**: Do not commit copyrighted board game scans or artwork to replace `board.jpg`.

### 4. Submitting a Pull Request
- Push your branch to your fork and open a Pull Request against `main`.
- Fill out the Pull Request template with a clear summary of what changed and why.
