# Accessibility Statement

## Commitment
I am committed to making **Carcassonne Scorer** usable for as many players as possible, including those using assistive technologies or playing on smaller screens.

## Supported Environments
This application is built with standard HTML, CSS, and vanilla JavaScript, and is designed to work across modern web browsers (Chrome, Firefox, Safari, and Edge) on desktop, tablet, and mobile devices.

## Current Accessibility Features
- **Responsive layout:** The photo scoring board can be hidden to improve readability and touch-target sizing on smaller screens.
- **Colour + labels:** Player tracks and score sources use text labels and icons alongside player colours so scoring does not rely solely on colour perception.
- **Clear contrast:** High-contrast buttons and score chips for quick reading during tabletop play.

## Known Limitations
- **Photo Board Calibration:** The **Calibrate photo board** feature requires clicking or tapping 50 specific coordinates on an image (`board.jpg`), which is currently not accessible to screen-reader-only or keyboard-only users. *(Workaround: Users can skip calibration and hide the photo board to use the standard text and button controls.)*
- **Canvas/Overlay Tokens:** Meeple, messenger, and robber positions drawn over `board.jpg` are visual overlays and do not currently expose live ARIA announcements when moved.

## Reporting Accessibility Barriers
If you encounter any difficulty using this scorer or have suggestions to improve keyboard navigation or screen-reader support, please open an issue in this repository with the label `accessibility`.
