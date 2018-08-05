# Tutorial 3 - Remote

In this tutorial, we will demo how to use Git on the remote site.
> Notice that the following tutorial will focus on **command-line** operation.

---
## 3.1 Git Remote

The following operation will demo how to use Git on the remote site. Thus, we will mark "demo" means this step is for demo using.
1. Register a account on GitHub (or GitLab, Bitbucket, etc.)
2. Create a new repository on GitHub named `git-demo` (demo)
    ![](https://i.imgur.com/8D8zcBU.png)
    > The name of repository `git-demo` is used for demo.
3. Copy the URL of repository `git-demo` you created
    ![](https://i.imgur.com/ON2A638.png) 
4. Register the remote repository in your local site with the URL you copied in step 3.
    ```bash
    $ git remote add origin <REPO_URL>
    ```
    * The command `add` means to add a new remote repository to your local site.
    * The parameter `origin` is the name of remote repository you registered in local site.
    > You need to replace `<REPO_URL>` by the URL you copied in step 3.
5. More commands in `git remote` (optional)
    * Show all registered remote repository in local site
        ```bash
        $ git remote
        ```
    * Show the URL of the specific remote repository registered in local site
        ```bash
        $ git remote get-url origin
        ```
    * Rename the remote repository registered in local site
        ```bash
        $ git remote rename origin develop
        ```
    * Change the URL of the remote repository registered in local site
        ```bash
        $ git remote set-url origin <REPO_URL>
        ```
    > You can also follow the command in `remote.sh` we provide. Notice that you need to replace `<REMOTE_REPO>`, `<REPO_URL>`, `<OLD_NAME>`, and `<NE_NAME>` with yours.

## 3.2 Git Push

1. Push the local repository to the remote site (i.e., GitHub, GitLab, Bitbucket, etc.)
    ```bash
    $ git push orign master
    Username: <USERNAME>
    Password: <PASSWORD>
    Counting objects: 3, done.
    Writing objects: 100% (3/3), 270 bytes | 0 bytes/s, done.
    Total 3 (delta 0), reused 0 (delta 0)
    To <REPO_URL>
     * [new branch]      master -> master
    ```
    * After you enter the command `git push origin master`, Git will ask you to enter the username and password on your remote site (i.e., GitHub, GitLab, Bitbucket, etc.).
    * There are some methods to help you automatic authenticate your account on remote site. You can search lots of materials on the internet and do it by yourself.
    > You can also follow the command in `push.sh` we provide. Notice that you need to replace `<REMOTE_REPO>` and `<LOCAL_BRANCH>` with yours.
2. Check the result pushed on the remote site
    ![](https://i.imgur.com/ukBjrbr.png)

## 3.3 Git Clone

The following operation will demo how to use Git on the remote site. Thus, we will mark "demo" means this step is for demo using.
1. Change the directory to the same path of the folder `git-demo` (demo)
    ```bash
    $ cd .. && ls
    git-demo
    ```
2. Clone the remote repository on your local site (demo)
    ```bash
    $ git clone https://github.com/yungshenglu/Git_practice
    Username: <USERNAME>
    Password: <PASSWORD>
    ...
    ```
    * After you enter the command `git clone`, Git will ask you to enter the username and password on your remote site (i.e., GitHub, GitLab, Bitbucket, etc.).
    * There are some methods to help you automatic authenticate your account on remote site. You can search lots of materials on the internet and do it by yourself.
    > The URL after `git clone` is for demo. You can replace it with the remote repository you want to clone.

---
## Notice

If you have any question, please feel free to ask me. Besides, if you want to contribute this repository, you are welcome to pull request.

---
## Author

* [David Lu](https://github.com/yungshenglu)