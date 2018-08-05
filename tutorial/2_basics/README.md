# Tutorial 2 - Basics

In this tutorial, we will demo the basic usage on Git.
> Notice that the following tutorial will focus on **command-line** operation

---
## 2.1 Git Init

The following operation will demo how to use Git in a new repository. Thus, we will mark "demo" means this step is for demo using.
1. In your home directory, create a folder named `git-demo` and change directory (demo)
    ```bash
    $ mkdir git-demo && cd git-demo
    ```
2. Create Git repository in this folder `git-demo`
    ```bash
    $ git init
    Initialized empty Git repository in .../git-demo/.git/
    ```
    > You also do this by using `init.sh` we provide.

## 2.2 Git Status

The following figure shows that the three main status in Git.
* The "working directory" means in current workspace; namely, the file you haven't save.
* The "staging area" means in temporary stage; namely, ready to enter Git repository.
* The "repository" means in Git repository; namely, you have already save files.
![](http://www.allcodingworld.com/media/git/git-life-cycle.png)

1. Create a file named `README.md` in `git-demo` and write down the following content (demo)
    ```markdown
    # Git DEMO
    This is my first repository using Git.
    ```
2. Check the current status of Git repository
    ```bash
    $ git status
    On branch master

    Initial commit

    Untracked files:
      (use "git add <file>..." to include in what will be committed)

            README.md
    
    nothing added to commit but untracked files present (use "git add" to track)
    ```

## 2.3 Git Add

1. Add the file `README.md` into Git repository
    ```bash
    $ git add README.md
    ```
    > You can also do it by using `add.sh` we provide, but you need to replace `<FILE>` with the file you want to add into Git repository.
2. Check the current status of Git repository
    ```bash
    $ git status
    On branch master

    Initial commit

    Changes to be committed:
      (use "git rm --cached <file>..." to unstage)

            new file:   README.md
    ```
3. If you want to add all changed files into Git repository without doing `git add <file>` on by one, you can use the following command to add all of them into repository. (optional)
    ```bash
    $ git add .
    ```

## 2.4 Git Commit

1. Commit your current change in Git repository
    ```bash
    $ git commit -m "Initial commit"
    [master (root-commit) e83c8d6] Initial commit
     1 file changed, 2 insertions(+)
     create mode 100644 README.md
    ```
    > * Notice that `-m` in the command means to write down the commit message in the command-line without enter into "vim".
    > * You can also do it by using `commit.sh` we provide, but you need to replace `<COMMIT_MESSAGE>` with your own commit message.
2. Check the current status of Git repository
    ```bash
    $ git status
    On branch master
    nothing to commit, working directory clean
    ```

## 2.5 Git Log

* Check the log file about commit
    ```bash
    $ git log
    commit e83c8d6eed726b1bb8e83e58a53934c035759482
    Author: <NAME> <<EMAIL>>
    Date:   Tue Aug 16 09:57:47 2018 +0800

        Initial commit
    ```
    > Notice that the `NAME` and `<EMAIL>` will be replaced with yours.

---
## Notice

If you have any question, please feel free to ask me. Besides, if you want to contribute this repository, you are welcome to pull request.

---
## Author

* [David Lu](https://github.com/yungshenglu)