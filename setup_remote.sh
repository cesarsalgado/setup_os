# paramenter 1 ($1) is the path to the folder where the dotfiles shoulde be cloned.
# if the folder isn't empty then it will be assumed that needed dotfiles are already there.

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

sudo apt-get install git
sudo apt-get install vim

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
