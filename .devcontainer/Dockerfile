FROM mcr.microsoft.com/vscode/devcontainers/base:0-bullseye

RUN apt-get update && \
    apt-get install git curl wget zsh vim -y && \
    apt-get clean

RUN chsh -s /bin/zsh vscode
