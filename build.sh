#!/usr/bin/env bash
# Wraps src/index.body.html into a complete deployable index.html
set -euo pipefail
cd "$(dirname "$0")"
python3 - << 'PY'
body = open('src/index.body.html').read()
i = body.find('<style>')
headmat, rest = body[:i].strip(), body[i:]
open('index.html','w').write(f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Mythbolt — independent offensive security practice. Adversarial testing, vulnerability research, and coordinated disclosure.">
<meta name="theme-color" content="#F2EFE4" media="(prefers-color-scheme: light)">
<meta name="theme-color" content="#131E1D" media="(prefers-color-scheme: dark)">
<meta property="og:title" content="Mythbolt">
<meta property="og:description" content="Adversarial testing, vulnerability research, and coordinated disclosure for systems that cannot afford surprises.">
<meta property="og:type" content="website">
<meta property="og:url" content="https://mythbolt.com/">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23C08A3E' d='M13.5 2 4 13.2h6.2L9.4 22 20 10.4h-6.6L13.5 2Z'/%3E%3C/svg%3E">
{headmat}
<style>
*,*::before,*::after{{box-sizing:border-box}}
img{{max-width:100%}}
[hidden]{{display:none!important}}
</style>
</head>
<body>
{rest}
</body>
</html>
""")
print("built index.html")
PY
