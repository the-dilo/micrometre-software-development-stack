!#/bin/bash
apt-get -q update && \
  apt-get install --no-install-recommends -y --force-yes -q \
    ca-certificates \
    zsh \
    tmux \
    curl \
    git \
    vim-nox \
    rubygems \
    build-essential \
    cmake \
    python-dev \
    && \
  apt-get clean && \
  rm /var/lib/apt/lists/*_*