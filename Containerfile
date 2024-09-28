FROM quay.io/fedora/fedora-bootc:40

RUN mkdir -p /usr/share/containers/systemd && systemctl enable podman.socket
COPY podman-units/* /usr/share/containers/systemd/

# Cannot put Caddyfile in /usr, because podman needs to relabel it (:Z) but /usr is read-only
COPY Caddyfile /etc/Caddyfile

COPY gitea-shim /usr/local/bin/gitea
COPY 99-hardening.conf /etc/ssh/sshd_config.d/
COPY gitea-runner-config.yaml /etc/config.yaml
