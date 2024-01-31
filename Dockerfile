FROM --platform=linux/amd64 ubuntu:latest


RUN apt update && \
    apt install -y curl \
    git \
    lua5.4 \
    npm \
    golang \
    unzip \
    zsh \
    python3 \
    python3-pip \
    python3-venv \
    ripgrep && \
    pip3 install neovim && \
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && \
    tar -xzf nvim-linux64.tar.gz && \
    rm -rf nvim-linux64.tar.gz && \
    ln -fs /nvim-linux64/bin/nvim /usr/local/bin/nvim && \
    useradd -rm -d /home/thurs -s /bin/zsh thurs

USER thurs

WORKDIR /home/thurs

COPY --chown=thurs:thurs . .config/nvim

RUN nvim +"lua require('lazy').install()" +qa
RUN nvim +"MasonInstall lua-language-server pyright typescript-language-server terraform-ls ansible-language-server marksman taplo gopls yaml-language-server dockerfile-language-server" +q
