FROM timbru31/java-node

MAINTAINER Vladyslav Kushney

ENV SFDX_AUTOUPDATE_DISABLE=false
ENV SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
ENV SFDX_DOMAIN_RETRY=300
ENV SFDX_PROJECT_AUTOUPDATE_DISABLE_FOR_PACKAGE_CREATE=true
ENV SFDX_PROJECT_AUTOUPDATE_DISABLE_FOR_PACKAGE_VERSION_CREATE=true

RUN npm install --global sfdx-cli

RUN apt update \
    && apt -y install jq \
    && apt -y install wget \
    && apt -y install unzip


RUN wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.44.0/pmd-bin-6.44.0.zip \
    && unzip pmd-bin-6.44.0.zip \
    && rm pmd-bin-6.44.0.zip