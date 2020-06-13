FROM rocker/shiny-verse:latest

RUN apt-get update -qq \
    && apt-get -y --no-install-recommends install \
        libcurl4-openssl-dev \
        curl \
        libssl-dev \

    && install2.r --error --deps TRUE \
        quantmod \
        tibbletime \
        lubridate \
        scales \
        e1071 \
        ggsci
        
