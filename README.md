# My nvim config

This is the current setting I use in the neovim editor. I hope it helps!

## Overview

To use my settings, you need to clone the repository in the following directory:
    

```sh
git clone git@gitlab.com:diegosparente/my-nvim-config.git ~/.config/nvim
```
* If the ~/.config/nvim path does not exist create one;

```sh
mkdir -p ~/.config/nvim
```
* remember that you need to have neovim installed =D ;

## Plugins

Now let's install the plugins.
Open the neovim and run the following command:

```sh
:PlugInstall
```
This will cause all plugins to be installed. Every time that add a new plugin the command must be executed ;D

Open init.vim to see how things are organized (I think I organized= D)

## tmux
I am using tmux as follows:

* Clone the TMP repository

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
* Copy or move the .tmux.conf from the ~ / .config / nvim directory to ~

```sh
cp ~/.config/nvim/.tmux.conf ~
```
* Run ``` < prefix > + I ``` to install TMP

Now make your modifications and your version! Success and health for you!

* [VIM book(Portuguese)](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/vimbook/vimbook-31-08-2009.pdf)
* [VIM book (English)](http://www.truth.sk/vim/vimbook-OPL.pdf)
* [tmux book (English)](http://uploads.mitechie.com/books/tmux_p1_1.pdf)
