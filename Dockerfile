FROM ubuntu

RUN apt-get update && \
    apt-get install -y \
        subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc wget unzip python \
        bsdtar && \
    apt-get clean

ENV VERSION=17.01.4

ARG TARGET=ar71xx
ARG SUBTARGET=generic

ENV package=lede-imagebuilder-$VERSION-$TARGET-$SUBTARGET.Linux-x86_64

RUN wget https://downloads.lede-project.org/releases/$VERSION/targets/$TARGET/$SUBTARGET/$package.tar.xz && \
    bsdtar xJf $package.tar.xz && \
    mv $package lede-imagebuilder && \
    rm $package.tar.xz

WORKDIR lede-imagebuilder
