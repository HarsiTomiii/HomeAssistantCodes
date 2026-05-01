# Trailarr - Home Assistant Addon

This addon wraps the [Trailarr](https://github.com/nandyalu/trailarr) Docker container as a Home Assistant addon, allowing you to download and manage trailers for your Radarr and Sonarr media libraries directly from Home Assistant.

## Installation

1. In Home Assistant, go to **Settings → Add-ons → Add-on Store**.
2. Click the three-dot menu (⋮) in the top right and choose **Repositories**.
3. Add the URL of your own repository containing this addon (or copy this folder into a local addons repository).
4. Find **Trailarr** in the store and click **Install**.

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `PUID` | `1000` | User ID the app runs as |
| `PGID` | `1000` | Group ID the app runs as |
| `TZ` | `Europe/London` | Timezone (e.g. `America/New_York`) |
| `APP_DATA_DIR` | `/config/trailarr` | Where Trailarr stores its database and config |

## Media Access

Trailarr needs access to the same media paths that Radarr/Sonarr use. The addon maps Home Assistant's `/media` folder (your media drives) with read/write access. Make sure your Radarr and Sonarr path mappings point to paths accessible under `/media`.

## Web UI

Once running, Trailarr is available via the **Ingress** panel (the "Open Web UI" button in the addon page), or directly at:

```
http://<your-ha-ip>:7889
```

## Notes

- This addon uses the official `nandyalu/trailarr:latest` Docker image.
- All Trailarr configuration (Radarr/Sonarr connections, download profiles, etc.) is done inside the Trailarr web UI itself.
- Trailers are saved alongside your media files using Plex naming conventions, compatible with Plex, Jellyfin, and Emby.

## Support

- [Trailarr Documentation](https://nandyalu.github.io/trailarr/)
- [Trailarr Discord](https://discord.gg/KKPr5kQEzQ)
- [Trailarr GitHub](https://github.com/nandyalu/trailarr)
