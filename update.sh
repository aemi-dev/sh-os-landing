softwareupdate -lia;

brew update && brew upgrade && brew cask upgrade && brew cask upgrade --greedy;

brew cleanup && brew cleanup -s && rm -rf "$(brew --cache)";

sudo npm update -g && sudo npm upgrade -g;

pip install --user --upgrade pip;

pip freeze | cut -d \= -f 1 | xargs -n1 sudo pip install --user --upgrade;
