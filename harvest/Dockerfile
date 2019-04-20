ARG BASE_IMAGE=noop
FROM $BASE_IMAGE

MAINTAINER Makoto Watanabe @makotow

ARG VERSION=0
ARG BASE_IMAGE=0
ARG IMAGE_NAME=0
ARG HARVEST_VERSION=0
ARG NMSDK_VERSION=0

LABEL version=${VERSION} \
      base-image=${BASE_IMAGE} \
      image-name=${IMAGE_NAME} \
      harvest-version=${HARVEST_VERSION} \
      nmsdk-version=${NMSDK_VERSION}

RUN apt-get update && apt-get install -y \
	unzip \
	perl \
	libjson-perl \
	libwww-perl \
	libxml-parser-perl \
	liblwp-protocol-https-perl \
	libexcel-writer-xlsx-perl \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

COPY netapp-harvest_${HARVEST_VERSION}_all.deb /
COPY netapp-manageability-sdk-${NMSDK_VERSION}.zip /

RUN dpkg -i netapp-harvest_${HARVEST_VERSION}_all.deb \
	&& unzip -j netapp-manageability-sdk-${NMSDK_VERSION}.zip netapp-manageability-sdk-${NMSDK_VERSION}/lib/perl/NetApp/* -d /opt/netapp-harvest/lib \
	&& rm /netapp-harvest_${HARVEST_VERSION}_all.deb \
	&& rm /netapp-manageability-sdk-${NMSDK_VERSION}.zip

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
