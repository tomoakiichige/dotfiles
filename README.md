# dotfiles

## vim, nvim

```bash
ln -s ./.vimrc ~/.vimrc
ln -s ./nvim ~/.config/nvim

# install vim-plug
# https://github.com/junegunn/vim-plug#unix-linux
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install vim-plug plugins  
# https://github.com/junegunn/vim-plug/wiki/tips#install-plugins-on-the-command-line
nvim -es -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
```

## git

```bash
ln -s ./.gitconfig ~/.gitconfig
```

## tmux

```bash
ln -s ./.tmux.conf ~/.tmux.conf
```
