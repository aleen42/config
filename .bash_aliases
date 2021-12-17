alias ll="ls -lG"
alias cnpm="npm set registry https://registry.npm.taobao.org"
alias onpm="npm set registry https://registry.npmjs.org"

export LOCALHOST="127.0.0.1"
alias socks="ALL_PROXY=socks5h://$LOCALHOST:1080/ \
             http_proxy=http://$LOCALHOST:1080/ \
             https_proxy=https://$LOCALHOST:1080/ \
             HTTP_PROXY=http://$LOCALHOST:1080/ \
             HTTPS_PROXY=http://$LOCALHOST:1080/"

export COREMAIL_CMJ="/Users/aleen42/Business/Coremail/Code/root/branches/XT5.0.x"
export COREMAIL="/Users/aleen42/Business/Coremail/Code"
export JAVASCRIPT="/Users/aleen42/Documents/Projects/JavaScript"

function idea() {
  open -na "IntelliJ IDEA" --args "$@"
}
