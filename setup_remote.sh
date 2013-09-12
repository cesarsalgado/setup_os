# setup that I will use in Linux OS that I access remotely.

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

sudo apt-get install git
sudo apt-get install vim
sudo apt-get install meld

cd $HOME

# git pull and install dotfiles as well
if [ -d ./dotfiles/ ]; then
  fail "dotfiles folder already exists."
fi

## check if folder is empty
#if [ ! "$(ls -A $1)" ]; then
#  git clone https://github.com/cesarsalgado/dotfiles.git $1
#fi

git clone https://github.com/cesarsalgado/dotfiles.git

ln -sb dotfiles/vim/.vimrc .

ln -sb dotfiles/git/.gitconfig .
ln -sb dotfiles/git/.gitignore_global .
