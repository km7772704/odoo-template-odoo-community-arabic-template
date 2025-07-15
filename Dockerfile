FROM odoo:17.0

LABEL maintainer="you@example.com"

USER root
RUN apt-get update && apt-get install -y \
    locales && \
    locale-gen ar_EG.UTF-8

ENV LANG=ar_EG.UTF-8 \
    LANGUAGE=ar_EG:ar \
    LC_ALL=ar_EG.UTF-8

USER odoo
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons