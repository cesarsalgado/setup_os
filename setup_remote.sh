# setup that I will use in Linux OS that I access remotely.
# search for manually to see steps that should be done manually

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

sudo apt-get update
sudo apt-get install nautilus-open-terminal
sudo apt-get install git
sudo apt-get install vim-gtk
sudo apt-get install meld
sudo apt-get install r-base r-base-dev
sudo apt-get install imagemagick
sudo apt-get install curl
sudo apt-get install octave


# commands to install node.js
# Install a special package
sudo apt-get install -y python-software-properties python g++ make
# Add a new repository for apt-get to search
sudo add-apt-repository ppa:chris-lea/node.js
# Update apt-get’s knowledge of which packages are where
sudo apt-get update
# Now install nodejs and npm
sudo apt-get install -y nodejs

# install ungit. Graphical interface to git.
sudo npm install -g ungit


# install ruby
sudo apt-get install ruby1.9.1

# install ipython and some packages
curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | sudo python
sudo pip install ipython[notebook]
sudo pip install numpy
sudo pip install scipy
sudo apt-get install python-matplotlib
sudo pip install pandas
sudo pip install scikit-learn
sudo pip install scikit-image

# part below copy setup the dotfiles.
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


# install ConqueTerm. It is useful to run ipython alongside vim.
# remember to disable autoident in ipython.
wget https://conque.googlecode.com/files/conque_2.3.vmb
# manually:
# Open the .vba file with Vim and run the following commands:
# :so %
# :q
# delete the conque_2.3.vmb
