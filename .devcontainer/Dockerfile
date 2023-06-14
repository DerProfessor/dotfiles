FROM mcr.microsoft.com/vscode/devcontainers/base:0-bullseye

RUN apt-get update && \
    apt-get install git curl wget zsh vim -y && \
    apt-get clean

RUN chsh -s /bin/zsh vscode

# TODO: Transfer this to init script
RUN ln -s /workspaces/dotfiles /home/vscode/.dotfiles && \
    ln -s /home/vscode/.dotfiles/zsh /home/vscode/.zsh && \
    ln -s -f /home/vscode/.dotfiles/zsh/zshrc /home/vscode/.zshrc

RUN git clone https://github.com/romkatv/powerlevel10k.git --depth 1 --branch v1.18.0
RUN ls -alh && pwd && mv ./powerlevel10k /workspaces/dotfiles/
