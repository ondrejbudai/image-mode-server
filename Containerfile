FROM quay.io/fedora/fedora-bootc:40

RUN mkdir -p /usr/share/containers/systemd
COPY podman-units/* /usr/share/containers/systemd/

# Cannot put Caddyfile in /usr, because podman needs to relabel it (:Z) but /usr is read-only
COPY Caddyfile /etc/Caddyfile
