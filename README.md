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

