## How to integrate with Windows Terminal

1. Install Windows Terminal via Microsoft Store.
2. Install Ubuntu WSL via Microsoft Store.
3. Apply [`settings.json`](./settings.json) for configuring the Window Terminal.
4. Apply [`.bash_aliases`](./.bash_aliases) for some common used aliases when accessing Windows Command like `idea64.exe`, `explorer.exe`, .etc.
5. Install Power Line tutorial:

    1. Setup via [justjanne/powerline-go](https://github.com/justjanne/powerline-go)

    ```bash
    sudo apt install golang-go
    socks go get -u github.com/justjanne/powerline-go
    ```

    2. Apply [`powerline-go-aleen.json`](./powerline-go-aleen.json) for specifying themes of Power Line.
    3. Apply [`.bashrc`](./.bashrc) for setting up scripts.
6. Use `WSLENV` to share Windows Environment Variables in the Ubuntu WSL like `PROJECT/p:TERMINAL/p`, where we can echo `$PROJECT` inside the terminal.
7. Apply [`.vimrc`](./.vimrc) for supporting automatically paste data to clipboard when yanking via Visual mode.
8. Run [`setup.reg`](./setup.reg) to support opening WSL in the context menu of a specific folder.

### FAQ

1. Why can't we set `HTTP_PROXY` for using `git.exe` or `annie.exe` directly?

    A: Because they all use environment variables from Windows rather than the WSL itself. In such a situation, you should install the Linux binary instead. Global proxy from Windows won't apply to WSL applications as well.

2. Why can't we directly install `grunt`, `bower` directly with `node.exe` in WSL?

    A: Because it may throw an error around looking up path under WSL. In such a situation, you should modify the execution file:

    Take [`grunt`](./grunt) as an example, modify the following snippet:

    ```bash
    node "$basedir/node_modules/grunt-cli/bin/grunt" "$@" 
    ```

    To:

    ```bash
    node.exe $(wslpath -w "$basedir/node_modules/grunt-cli/bin/grunt") "$@" 
    ```
