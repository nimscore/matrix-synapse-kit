FROM ubuntu:latest
LABEL authors="nims"

#переменная для выбора версии синапса
ARG SYNAPSE_VERSION=latest
FROM ghcr.io/element-hq/synapse:${SYNAPSE_VERSION}

#переменная для выбора ветки s3 модуля
ARG SYNAPSE_S3_STORAGE_PROVIDER=main
RUN pip3 install https://github.com/matrix-org/synapse-s3-storage-provider/archive/${SYNAPSE_S3_STORAGE_PROVIDER}.tar.gz
