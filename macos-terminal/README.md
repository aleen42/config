## How to integrate with macOS Terminal

1. Apply the [`Solarized Dark`](./Solarized%20Dark.terminal) style by running it.
2. Enable syntax highlight for the vi / vim tool by copying `.vim` folder and the `.vimrc` file.
3. Copy bash configuration files (`.bash_profile`, `.bashrc` and `.bash_aliases`) to support `alias socks` or set up Homebrew mirror so that we can install Homebrew via our proxy and use it more quickly.

    ```bash
    source ~/.bash_profile
    ```

4. Install "Homebrew":

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

5. Install "Oh My Zsh" and override `~/.zshrc`:

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

   *Notice: need [Consolas Nerd Font Complete Mono Windows Compatible.ttf](./consolas_nf.ttf) to show special icons of PowerLine*

6. Install some useful tools:

    ```bash
    # ssh
    brew install openssh
    # svn
    brew install subversion
    # nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    ```

    *Notice: MacOS has deprecated `ssh-rsa` by default and you need to add some configurations if you do need to use this algorithm:*

    ```ssh-config
    HostKeyAlgorithms=+ssh-rsa
    PubkeyAcceptedKeyTypes +ssh-rsa
    ```
