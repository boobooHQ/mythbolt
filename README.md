# mythbolt.com

Static site for Mythbolt — an independent offensive-security practice.

## Layout
- `index.html` — the deployable site (what GitHub Pages serves). Generated; don't edit by hand.
- `src/index.body.html` — the source. Edit this.
- `build.sh` — regenerates `index.html` from the source.

Single self-contained HTML file: no build dependencies, no framework, no bundler.
Fonts load from Google Fonts; all CSS, JS, and artwork are inline.

## Editing
```bash
# edit src/index.body.html, then:
./build.sh && git add -A && git commit -m "update" && git push
```

## Custom domain
Add a `CNAME` file containing `mythbolt.com`, then point DNS at GitHub Pages.
