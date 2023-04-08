ARG BUILD_VERSION
FROM technitium/dns-server:${BUILD_VERSION}

# link /etc/dns to the /data folder that is mounted by HomeAssistant
RUN ln -s /data /etc/dns

# Inherit ENTRYPOINT and CMD from the base image
