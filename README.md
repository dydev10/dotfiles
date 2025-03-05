# dotfiles

Collection of dot file configurations. Setup linux dev environment quickly using this repo and `stow` utility command.

## Usage

#### Install `stow`
1. `apt update`
2. `apt install stow`

#### Clone this repository in your home directory

1. `cd ~`
2.  `git clone git@github.com:dydev10/dotfiles.git`

#### Create soft links for dotfile

1. `cd ~/dotfiles`
2. `stow .`

This will create sym links for all the dotfiles inside this repo, except the README.md file, so that they are available at ~/{dotFile}.
Install the needed tools covered in this repo to start using the dotfiles.

Delete the `.git` dir inside to use this project as a base for your own repo later using `rm -rf .git`
