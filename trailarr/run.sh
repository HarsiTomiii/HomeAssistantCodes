#!/usr/bin/with-contenv bashio

# Read config options from Home Assistant addon config
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')
TZ=$(bashio::config 'TZ')
APP_DATA_DIR=$(bashio::config 'APP_DATA_DIR')

# Export as environment variables for the app
export PUID="${PUID}"
export PGID="${PGID}"
export TZ="${TZ}"
export APP_DATA_DIR="${APP_DATA_DIR}"
export APP_PORT=7889
export APP_MODE="Docker"

bashio::log.info "Starting Trailarr..."
bashio::log.info "PUID=${PUID}, PGID=${PGID}, TZ=${TZ}"
bashio::log.info "Data directory: ${APP_DATA_DIR}"

# Ensure the data directory exists
mkdir -p "${APP_DATA_DIR}"

# Hand off to the original Trailarr entrypoint
exec /app/scripts/entrypoint.sh
