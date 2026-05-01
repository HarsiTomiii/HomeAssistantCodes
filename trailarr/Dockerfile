ARG BUILD_FROM=nandyalu/trailarr:latest
FROM ${BUILD_FROM}

# Install bashio for Home Assistant addon support
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl jq && \
    curl -fsSL https://raw.githubusercontent.com/hassio-addons/bashio/main/lib/bashio.sh \
        -o /usr/lib/bashio.sh && \
    chmod +x /usr/lib/bashio.sh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the addon run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Override entrypoint to use HA addon run script
ENTRYPOINT ["/run.sh"]
