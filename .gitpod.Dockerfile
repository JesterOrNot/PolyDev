FROM gitpod/workspace-full:latest

USER gitpod
# Apply user-specific settings

RUN mkdir -p /home/gitpod/.swift 
RUN sudo apt-get update -q && \
    sudo apt-get install -yq libtinfo5 libcurl4-openssl-dev libncurses5 && \
    sudo rm -rf /var/lib/apt/lists/*
RUN brew install cabal-install
# Give back control
USER root