# 🎧 WaveDjing – Netlify Deployment Guide

## Option 1: Drag & Drop (schnellste Methode)

1. Gehe zu **https://app.netlify.com/drop**
2. Ziehe den entpackten `wavedjing`-Ordner per Drag & Drop auf die Seite
3. Fertig! Du bekommst sofort eine URL wie `random-name-12345.netlify.app`

## Option 2: Über Git (empfohlen für Updates)

1. Erstelle ein GitHub-Repository (z.B. `wavedjing`)
2. Pushe alle Dateien ins Repo:
   ```bash
   cd wavedjing
   git init
   git add .
   git commit -m "Initial WaveDjing website"
   git branch -M main
   git remote add origin https://github.com/DEIN-USERNAME/wavedjing.git
   git push -u origin main
   ```
3. Gehe zu **https://app.netlify.com**
4. Klicke "Add new site" → "Import an existing project"
5. Wähle GitHub und dein Repository
6. Deploy-Einstellungen bleiben leer (netlify.toml regelt alles)
7. Klicke "Deploy site"

## Eigene Domain verbinden (z.B. wavedjing.com)

1. Domain registrieren bei Namecheap, IONOS, GoDaddy etc.
2. In Netlify: **Site settings** → **Domain management** → **Add custom domain**
3. Domain eingeben (z.B. `wavedjing.com`)
4. DNS-Einstellungen beim Domain-Anbieter ändern:
   - **Option A (empfohlen):** Netlify DNS nutzen – Nameserver auf Netlifys NS umstellen
   - **Option B:** CNAME-Record setzen: `www` → `dein-site-name.netlify.app`
5. SSL-Zertifikat wird automatisch von Netlify erstellt (kostenlos via Let's Encrypt)

## Dateien im Projekt

```
wavedjing/
├── index.html        ← Die Hauptseite
├── netlify.toml      ← Netlify-Konfiguration (Headers, Redirects, Caching)
├── robots.txt        ← SEO: Suchmaschinen-Anweisungen
├── sitemap.xml       ← SEO: Sitemap für Google
└── README.md         ← Diese Datei
```

## Später: Mixes & Live Stream hinzufügen

Wenn du Mixes hochladen willst, erstelle einen `/audio`-Ordner und lege die MP3s dort ab.
Für den Live Stream kann später ein Embed (z.B. Twitch, YouTube Live) eingebaut werden.

---

🎉 Viel Spaß mit deiner WaveDjing-Seite!
