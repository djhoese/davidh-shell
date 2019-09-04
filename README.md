# davidh-shell

Shell environment scripts for my personal account on various machines.

## Installation

When setting up on a new machine, the following steps should clone this
repository and place scripts and softlinks where they need to be for things to run.

Prerequisites:

* `git`
* `bash`
* `curl`

1. Clone this repository. Preferred location is `~/repos/git`.
2. Run `./install.sh`.
3. Add the following to your `~/.bashrc`:

   ```bash
   export PATH="$HOME/repos/git/davidh-shell/bash/bashrc:$PATH"
   ```
4. Re-source the `.bashrc` or log out and back in.

## Contents

* `vim` -> `~/.vim`
* `vimrc` -> `~/.vimrc`
* `bash`: `~/.bashrc` additions
* `bin`: Utility scripts

## Other Common Steps

* Set up git:

  ```bash
  git config --global commit.gpgsign true
  git config --global user.signingkey ABC123
  git config --global user.name "David Hoese"
  git config --global user.name <email>
  git config --global core.editor vim
  ```

* Install git lfs (`sudo apt install git-lfs`):

  ```bash
  git lfs install
  ```

