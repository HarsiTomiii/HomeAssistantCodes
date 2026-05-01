# Trailarr - Home Assistant Addon

Automatically download and manage trailers for your Radarr and Sonarr media libraries — directly from Home Assistant.

[![Add Repository to HA](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FHarsiTomiii%2FHomeAssistantCodes)

---

## What is Trailarr?

[Trailarr](https://github.com/nandyalu/trailarr) is an application that connects to your Radarr and Sonarr instances, finds your media, and automatically downloads trailers for them. Trailers are saved alongside your media files using Plex naming conventions, making them compatible with **Plex, Jellyfin, and Emby**.

---

## Installation

**Step 1 — Add this repository to Home Assistant:**

Click the button below to add this addon repository automatically:

[![Add Repository to HA](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FHarsiTomiii%2FHomeAssistantCodes)

Or add it manually:
1. Go to **Settings → Add-ons → Add-on Store**
2. Click the three-dot menu (⋮) in the top right → **Repositories**
3. Paste `https://github.com/HarsiTomiii/HomeAssistantCodes` and click **Add**

**Step 2 — Install Trailarr:**

[![Open Trailarr in HA](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=local_trailarr&repository_url=https%3A%2F%2Fgithub.com%2FHarsiTomiii%2FHomeAssistantCodes)

Or find **Trailarr** in the Add-on Store and click **Install**.

---

## Configuration

After installing, configure the addon before starting it:
Leave them on the defaults if you don't know what they are for :)

| Option | Default | Description |
|--------|---------|-------------|
| `PUID` | `1000` | User ID the app runs as |
| `PGID` | `1000` | Group ID the app runs as |
| `TZ` | `Europe/London` | Your timezone (e.g. `America/New_York`) — find yours [here](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) |
| `APP_DATA_DIR` | `/config/trailarr` | Where Trailarr stores its database and settings |

> 💡 All Radarr/Sonarr connections, download profiles, and trailer settings are configured inside the **Trailarr web UI** — not here.

---

## Media Access

Trailarr needs access to the same media folders that Radarr/Sonarr use. This addon maps Home Assistant's `/media` folder with read/write access.

Make sure your **Radarr and Sonarr path mappings** point to paths under `/media`. For example, if your movies are at `/media/movies`, configure Radarr to use that path as well.

Trailarr should recognize the paths itself, but you still need to add them when setting up Radarr or Sonarr connections.

---

## Web UI

Once the addon is running, open the Trailarr interface via the **Open Web UI** button on the addon page, or navigate directly to:

```
http://<your-home-assistant-ip>:7889
```

---

## Notes

- This addon wraps the official [nandyalu/trailarr](https://hub.docker.com/r/nandyalu/trailarr) Docker image.
- I barely know what I am doing, but if something is not working fine, refer to the official [nandyalu/trailarr](https://hub.docker.com/r/nandyalu/trailarr) repo.
- Trailers are named using Plex conventions and work with Plex, Jellyfin, and Emby.

---

## Related Apps & Plugins

### 🎬 Jellyfin Cinema Mode Plugin
Play downloaded trailers automatically before your movies, just like a real cinema.
- [Cinema Mode Plugin](https://github.com/CherryFloors/jellyfin-plugin-cinemamode) — Install via your Jellyfin server dashboard under **Plugins**
- Requires a compatible Jellyfin client (see below)

### 📂 Media Library Managers
Both are available in the **Home Assistant Community Add-on Store**.
- [Radarr](https://github.com/Radarr/Radarr) — Movie library organizer and manager
- [Sonarr](https://github.com/Sonarr/Sonarr) — TV series library organizer and manager

### 📺 Jellyfin Clients with Trailer Support
- [Wholphin](https://github.com/damontecres/Wholphin) — Apple TV client with trailer support
- [Moonfin](https://github.com/Moonfin-Client) — Jellyfin client with Cinema Mode support
- [Official Jellyfin Clients](https://jellyfin.org/downloads/clients) — Full list of official clients

---

## Support

| Resource | Link |
|----------|------|
| 📖 Trailarr Documentation | [nandyalu.github.io/trailarr](https://nandyalu.github.io/trailarr/) |
| 💬 Trailarr Discord | [discord.gg/KKPr5kQEzQ](https://discord.gg/KKPr5kQEzQ) |
| 🐛 Trailarr Issues | [github.com/nandyalu/trailarr/issues](https://github.com/nandyalu/trailarr/issues) |