if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
eval "$(/opt/homebrew/bin/brew shellenv)"
