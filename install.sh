cd ~;

# Prepare
sudo purge;
sudo periodic daily weekly monthly;
sudo periodic . daily weekly monthly;
sudo periodic .. daily weekly monthly;
sudo purge;
sudo touch .path.bak;
sudo echo $PATH >> ~/.path.bak;
sudo purge;

# Update macOS
sudo softwareupdate --reset-ignored;
sudo softwareupdate -l -d -i -a --force --verbose;
sudo purge;

# Install Command-Line-Tools
sudo xcode-select --install;
sudo purge;

# Update macOS
softwareupdate -l -d -i -a --force --verbose;
sudo purge;

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make some foreign cask available
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap github/gh
sudo purge;

# Install basic packages
brew install gcc git git-lfs llvm cmake clang-format gdbm composer;
brew install mas node deno yarn;
sudo purge;

# Install some basic npm packages
sudo npm install -g npm eslint nodemon nvm;
sudo purge;

# Install some basics brew-core
brew install python ipython ruby rust ocaml bison r gnuplot libomp cairo gnuplot graphviz imagemagick lame jupyterlab open-mpi fish bash;
sudo purge;

#  Install Composer PHP Modules
composer global require squizlabs/php_codesniffer;
composer global require friendsofphp/php-cs-fixer;
echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> ~/.zshrc;
sudo purge;

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
echo "export PATH=$PATH:/usr/local/bin:~/.cargo/bin" >> ~/.zshrc;
source ~/.zshrc;
sudo purge;

# Xcode
sudo mas install 497799835;

# Passwords Managers
brew cask install safeincloud-password-manager bitwarden;
sudo purge;

# Clouds
brew cask install onedrive google-backup-and-sync;
sudo purge;

# Basic Needs
brew cask install osxfuse java;
sudo purge;

# Pages, Numbers, Keynote
sudo mas install 409201541 409203825 409183694;
sudo purge;

# Graphic Design - Affinity: Photo, Designer, Publisher / Pixelmator
sudo mas install 824183456 824171161 881418622 407963104;
sudo purge;

# Editors
brew cask install sublime-text visual-studio-code brackets atom;
sudo purge;

# Virtualization
brew cask install virtualbox virtualbox-extension-pack;
sudo purge;

# Useful Tools
brew cask install maintenance forklift hiddenbar duet dash dupeguru iina imageoptim keka the-unarchiver motrix transtype turbo-boost-switcher;
sudo purge;

# Memory Cleaner
sudo mas install 518830108;
sudo purge;

# MAS Useful Tools: PopClip Magnet
sudo mas install 441258766 445189367;
sudo purge;

# Messengers
brew cask install telegram discord skype whatsapp spotify;
sudo purge;

# Readdle: Spark, PDF Expert
sudo mas install 1176895641 1055273043;
sudo purge;

# Browsers
brew cask install google-chrome chromium microsoft-edge google-chrome-canary microsoft-edge-dev firefox-developer-edition safari-technology-preview;
sudo purge;

# Office 365
brew cask install microsoft-word microsoft-excel microsoft-powerpoint;
sudo purge;

# iMovie - GarageBand
sudo mas install 408981434 682658836;
sudo purge;

mkdir Clouds
mkdir GitHub
ln -s ~/GitHub ~/Clouds/GitHub
ln -s ~/OneDrive ~/Clouds/OneDrive
ln -s ~/Google\ Drive ~/Clouds/Google\ Drive
ln -s /Users/gc/Library/Mobile Documents/com~apple~CloudDocs ~/Clouds/iCloud Drive
sudo purge;

sh update.sh;
