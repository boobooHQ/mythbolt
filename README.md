# mythbolt.com

Static site for Mythbolt — an independent offensive-security practice.

- `dist/` — the deployable site (this is what GitHub Pages serves)
- `index.body.html` — source body used to generate `dist/index.html`

Single self-contained HTML file. No build step, no dependencies.
Fonts load from Google Fonts; everything else is inline.
