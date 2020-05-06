cd ~;
echo $PATH >> ~/.path.bak;
# Update macOS
softwareupdate -lia;
sudo purge;
# Install Command-Line-Tools
sudo xcode-select --install;
sudo purge;
# Update macOS
softwareupdate -lia;
sudo purge;
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
# Make some foreign cask available
brew tap homebrew/cask-versions/
sudo purge;
# Install basics of basics
brew install gcc git git-lfs nmap llvm cmake node clang-format gdbm;
sudo purge;
# Install npm via npm
sudo npm install -g npm jshint;
sudo purge;
# Install some basics brew-core
brew install bison ocaml python@3.8 python3 python ipython ipython3 ruby rust r gnuplot libomp cairo gnuplot graphviz imagemagick lame jupyterlab open-mpi;
sudo purge;
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
echo "export PATH=$PATH:/usr/local/bin:~/.cargo/bin" >> ~/.zshrc;
source ~/.zshrc;
sudo purge;
# Passwords Managers
brew cask install safeincloud-password-manager bitwarden;
# Clouds
brew cask install onedrive google-backup-and-sync;
# Objective-See Suite
brew cask install lulu netiquette blockblock oversight taskexplorer maintenance;
# Basic Needs
brew cask install osxfuse java;
# Editors
brew cask install sublime-text visual-studio-code;
# Editors
brew cask install virtualbox virtualbox-extension-pack;
# Usefull Tools
brew cask install hazeover hiddenbar dash dupeguru iina imageoptim keka the-unarchiver motrix;
# Messengers
brew cask install telegram discord skype spotify;
# Browsers
brew cask install google-chrome microsoft-edge caskroom/versions/firefoxdeveloperedition;
# Office 365
brew cask install microsoft-word microsoft-excel microsoft-powerpoint;
# Others
brew cask install hazeover transtype forklift;
sudo purge;
mkdir Clouds
mkdir GitHub
ln -s ~/GitHub ~/Clouds/GitHub
ln -s ~/OneDrive ~/Clouds/OneDrive
ln -s ~/Google\ Drive ~/Clouds/Google\ Drive
ln -s /Users/gc/Library/Mobile Documents/com~apple~CloudDocs ~/Clouds/iCloud Drive
