## How to integrate with Windows Terminal

1. Install Windows Terminal via Microsoft Store.
2. Install Ubuntu WSL via Microsoft Store.
3. Apply `settings.json` for configuring the Window Terminal.
4. Install Power Line tutorial:

    1. Setup via [justjanne/powerline-go](https://github.com/justjanne/powerline-go)

    ```bash
    sudo apt install golang-go
    go get -u github.com/justjanne/powerline-go
    ```

    2. Apply `powerline-go-aleen.json` for specifying themes of Power Line.
    3. Apply `.bashrc` for setting up scripts.

5. Apply `.bash_aliases` for some common used aliases when accessing Windows Command like `idea64.exe`, `explorer.exe`, .etc.
6. Use `WSLENV` to share Windows Environment Variables in the Ubuntu WSL like `PROJECT/p:TERMINAL/p`, where we can echo `$PROJECT` inside the terminal.
7. Apply `.vimrc` for supporting automatically paste data to clipboard when yanking via Visual mode.
