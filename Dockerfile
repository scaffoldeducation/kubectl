FROM bitnami/minideb:bullseye-amd64
RUN install_packages ca-certificates gettext-base
COPY --from=bitnami/kubectl /opt/bitnami/kubectl/bin/kubectl /usr/bin/kubectl
