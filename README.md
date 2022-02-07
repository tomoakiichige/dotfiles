# dotfiles

## vim, nvim

```bash
ln -s ./.vimrc ~/.vimrc
ln -s ./nvim ~/.config/nvim
ln -s ./.vimrc ~/.config/nvim/init.vim
```

Install vim-plug  
https://github.com/junegunn/vim-plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Install vim-plug plugins  
https://github.com/junegunn/vim-plug/wiki/tips#install-plugins-on-the-command-line

```bash
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
```

## git

```bash
ln -s ./.gitconfig ~/.gitconfig
```
