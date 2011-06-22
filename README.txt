Installation:
git clone git@github.com:jwerre/vim.config.git ~/.vim

# create symbolic link to vimrc and gvimrc
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# update submodules in /bundle
git submodule init
git submodule update
