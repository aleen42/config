alias vi="vim"
alias open="explorer.exe"
alias idea="idea64.exe"
alias magick="magick.exe"
alias winnvm="nvm.exe"

alias socks="ALL_PROXY=socks5://127.0.0.1:10808 \
        http_proxy=http://127.0.0.1:10809/ \
        HTTP_PROXY=http://127.0.0.1:10809/"

function cdw() {
  cd "$(wslpath "$1")"
}
export -f cdw
