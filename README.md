# NeoVim Configuration
This is my neo-vim configuration, it contains some plugins with most of the basic stuff 
like a tree navigator, code auto-completion and some themes.

I also included a file called *nvim_shortcuts.vim* that contains some of the most useful
shortcuts i used while learning Vim.

## Prerequisites
We need to download VimPlug so we can install the plugins listed in our configuration 
file, we also need to donwload NodeJS so code autocompletion works (COC)

- [Vim-Plug](https://github.com/junegunn/vim-plug)
- [NodeJs](https://nodejs.org/es/)

## Installation
### *General steps*
First we need to install VimPlug, you can find the steps based on your operating system
[here](https://github.com/junegunn/vim-plug#installation).

### *Windows Steps*
You need to download the **init.vim** file and put it on the following directory 
*C:\Users\YourUsername\AppData\Local\nvim*, if *nvim* folder doesn't exist you need to 
create it 

### *<u>Final Steps</u>*
Once we've done everything above we need to install the plugins, to install the plugins
we need to open a neovim instance and type the following command in NORMAL mode **:PlugInstall** 
