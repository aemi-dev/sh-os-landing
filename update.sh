softwareupdate -lia;

sudo purge;

brew update;
brew upgrade;
brew cask upgrade;
brew cask upgrade --greedy;

sudo purge;

brew cleanup;
brew cleanup -s;
rm -rf "$(brew --cache)";

sudo purge;

sudo npm update -g;
sudo npm upgrade -g;

sudo purge;

pip install --user --upgrade pip;

sudo purge;

pip freeze | cut -d \= -f 1 | xargs -n1 sudo pip install --user --upgrade;
pip3 freeze | cut -d \= -f 1 | xargs -n1 sudo pip3 install --user --upgrade;
