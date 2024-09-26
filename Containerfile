FROM quay.io/fedora/fedora-bootc:40

RUN mkdir -p /usr/share/containers/systemd
COPY podman-units/* /usr/share/containers/systemd/
COPY Caddyfile /usr/share/Caddyfile
