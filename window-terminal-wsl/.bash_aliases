alias vi="vim"
alias open="explorer.exe"
alias idea="idea64.exe"
alias magick="magick.exe"
alias nvm="nvm.exe"
alias node="node.exe"
alias anime4k="Anime4KCPP_CLI.exe"
#alias annie="annie.exe" # install linux binary instead
alias cnpm="npm set registry https://registry.npm.taobao.org"
alias onpm="npm set registry https://registry.npmjs.org"
alias php="php.exe"
#alias ffmpeg="ffmpeg.exe"
#alias git="git.exe"
export LANG=en_US.UTF-8
#alias youtube-dl="youtube-dl.exe"

alias chrome="chrome.exe"
# For Karma
export TEMP="/temp/karma" # Create a folder under C:/tmp/karma for resolving https://stackoverflow.com/q/54090298
# export CHROME_BIN="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
# export FIREFOX_BIN="/mnt/c/Program Files/Mozilla Firefox/firefox.exe"

export LOCALHOST="192.168.200.192"
alias socks="ALL_PROXY=socks5://$LOCALHOST:1080/ \
       http_proxy=http://$LOCALHOST:1080/ \
       https_proxy=http://$LOCALHOST:1080/ \
       HTTP_PROXY=http://$LOCALHOST:1080/ \
       HTTPS_PROXY=http://$LOCALHOST:1080/"

# cdw Windows path
function cdw() {
  cd "$(wslpath "$1")"
}
export -f cdw

# alias Windows npm
function npm() {
  $(realpath --relative-to="$(pwd)" /mnt/f/Program\ Files/nodejs)/npm $@
}
export -f npm

# alias youtube-dl
function yt() {
  youtube-dl --prefer-insecure --no-check-certificate --proxy socks5://127.0.0.1:1080/ $@
}
export -f yt

# big file prune # download the jar file from https://rtyley.github.io/bfg-repo-cleaner/
function bfg() {
  java -jar /mnt/e/bfg-1.13.1.jar $@
}
export -f bfg


#export NVM_DIR="/mnt/f/Business/Coremail/Code/cmj-images/docker/_root/home/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

export DOCKER_HOST="tcp://localhost:2375"
