# Tutorial 1 - Start

In this tutorial, we will start *Git* from installation and set some configuration.
> Notice that the following tutorial will focus on **command-line** operation

---
## 1.1 Installation

1. Install *Git* on your machine
    * Windows / MacOS
        * Download [Git](http://git-scm.com) on the official website
        * It is available for all using "default" settings
    * Linux distribution
        * Use terminal command
            ```bash
            # For Debian / Ubuntu install command
            $ sudo apt-get install git-all
            # For Fedora / CentOS install command
            $ sudo yum install git-all
            ```
        * Use shell script we provide - `install.sh`
            ```bash
            # Support Ubuntu / CentOS / MacOS installation
            $ sh install.sh
            ```
2. Check your *Git* version on your machine (Notice that the following tutorial will focus on command-line operation)
    ```bash
    $ git --version
    ```

## 1.2 Configuration

1. Open terminal
    * Windows: Open **Git Bash** terminal
    * MacOS / Linux: Open terminal (Ctrl + T)
2. **Git config**
    * All configurations are stored in the file `.gitconfig` in your user's directory
    * Set user's name and email address
        ```bash
        $ git config --global user.name "<NAME>"
        $ git config --global user.email "<EMAIL>"
        ```
        > You can also do this by using `config.sh` we provide, but you need to replace `<NAME>` and `<EMAIL>` with yours.
    * List your Git config
        ```bash
        $ git config -l
        ```
    * More commands in `git config` (optional)
        * Set output color on Git
            ```bash
            $ git config --global color.ui auto
            ```
        * Set the alias of command "checkout" as "co"
            ```bash
            $ git config --global alias.co checkout
            ```
        * Fix the display of filenames in Chinese on Git
            ```bash
            $ git config --global core.quotepath off
            ```

---
## Notice

If you have any question, please feel free to ask me. Besides, if you want to contribute this repository, you are welcome to pull request.

---
## Author

* [David Lu](https://github.com/yungshenglu)