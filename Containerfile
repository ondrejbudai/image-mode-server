FROM quay.io/fedora/fedora-bootc:40

RUN mkdir -p /etc/containers/systemd
COPY podman-units/* /etc/containers/systemd/
