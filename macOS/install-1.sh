cd ~;

# Prepare
sudo purge;
sudo periodic daily weekly monthly;
sudo periodic . daily weekly monthly;
sudo periodic .. daily weekly monthly;
sudo purge;
touch $HOME/.path.bak;
sudo echo $PATH >> ~/.path.bak;
sudo purge;

# Update macOS
sudo softwareupdate -liar --force;
sudo purge;

# Install Command-Line-Tools
sudo xcode-select --install;
sudo purge;

# Update macOS
sudo softwareupdate -liar --force;
sudo purge;

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo purge;

# Make some foreign cask available
brew tap homebrew/aliases;
brew tap homebrew/autoupdate;
brew tap homebrew/bundle;
brew tap homebrew/cask;
brew tap homebrew/cask-drivers;
brew tap homebrew/cask-fonts;
brew tap homebrew/cask-versions;
brew tap buo/cask-upgrade;
brew tap homebrew/core;
brew tap homebrew/command-not-found;
brew tap homebrew/services;
brew tap homebrew/test-bot;
brew tap github/gh;
brew tap snyk/tap;
brew tap wpscanteam/tap;
sudo purge;

# Terminal Shell
brew install fish;
brew install bash;
brew install zsh;
brew install curl;
brew install wget;

# macOS Related
brew install mas;

# Install basic packages
brew install gcc;
brew install git;
brew install git-lfs;
brew install cmake;
brew install clang-format;
brew install gdbm;

sudo purge;

# JS Related
brew install node;
brew install deno;
brew install yarn;

# PHP Related
brew install composer;

# Install some basic npm packages
sudo npm install -g npm chai clean-css documentation eslint growl jsdoc jshint mocha nodemon playwright terser vue;
sudo purge;

# Install some basics
brew install python@3.10;
brew install python@3.9;
brew install python@3.8;
brew install python@3.7;
brew install ipython;
brew install ruby;
brew install rust;
brew install ocaml;
brew install jupyterlab;
brew install youtube-dl;
brew install webp;
brew install woff2;
brew install mkcert;
brew install mysql;
brew install httpd;
brew install ffmpeg;
brew install lame;
brew install nmap;
brew install openssl;
brew install openssl@1.1;
brew install openssl@3;
brew install snyk;
brew install swift;
brew install openssh;
sudo purge;

sudo echo "/usr/local/bin/fish" >> /etc/shells;
sudo echo "/usr/local/bin/bash" >> /etc/shells;
sudo echo "/usr/local/bin/zsh" >> /etc/shells;

# Install Composer PHP Modules
composer global require squizlabs/php_codesniffer;
composer global require friendsofphp/php-cs-fixer;
echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> ~/.zshrc;
sudo purge;

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
echo "export PATH=$PATH:/usr/local/bin:~/.cargo/bin" >> ~/.zshrc;
source ~/.zshrc;
sudo purge;

mas install 824183456; # Affinity Photo
mas install 462058435; # Microsoft Excel
mas install 682658836; # GarageBand
mas install 634148309; # Logic Pro
mas install 407963104; # Pixelmator
mas install 824171161; # Affinity Designer
mas install 462054704; # Microsoft Word
mas install 424389933; # Final Cut Pro
mas install 634159523; # MainStage
mas install 883070818; # SafeInCloud Password Manager
mas install 937984704; # Amphetamine
mas install 881418622; # Affinity Publisher
mas install 1055273043; # PDF Expert
mas install 1176895641; # Spark
mas install 441258766; # Magnet
mas install 425424353; # The Unarchiver
mas install 462062816; # Microsoft PowerPoint
mas install 434290957; # Motion
mas install 1352778147; # Bitwarden
mas install 445189367; # PopClip
mas install 899247664; # TestFlight
mas install 823766827; # OneDrive
mas install 409201541; # Pages
mas install 747648890; # Telegram
mas install 424390742; # Compressor
mas install 640199958; # Developer
mas install 1452453066; # Hidden Bar
mas install 500154009; # Bitdefender Virus Scanner
mas install 470158793; # Keka
mas install 1518425043; # Boop
mas install 784801555; # Microsoft OneNote
mas install 985367838; # Microsoft Outlook
mas install 408981434; # iMovie
mas install 409203825; # Numbers
mas install 409183694; # Keynote
mas install 1464122853; # NextDNS
sudo purge;

# VPN
brew install openvpn;
brew install --cask openvpn-connect;
brew install --cask windscribe;
brew install --cask lulu;
brew install --cask netiquette;

# Clouds
brew install --cask google-drive;
brew install --cask dropbox;
sudo purge;

# Basic Needs
brew install --cask macfuse;
brew install --cask openjdk;
sudo purge;

# Editors
brew install --cask visual-studio-code;
sudo purge;

# Virtualization
brew install --cask virtualbox;
brew install --cask virtualbox-extension-pack;
sudo purge;

# System tools
brew install --cask maintenance;
brew install --cask appcleaner;
brew install --cask macs-fan-control;
brew install --cask turbo-boost-switcher;
brew install --cask fig;
brew install --cask xquartz;
sudo purge;

# Useful Tools
brew install --cask forklift;
brew install --cask dash;
brew install --cask;
brew install --cask iina;
brew install --cask imageoptim;
brew install --cask calibre;
brew install --cask deepl;
brew install --cask netnewswire;
brew install --cask audacity;
brew install --cask obs;
brew install --cask camo-studio;
brew install --cask jabra-direct;
brew install --cask logitech-g-hub;
sudo purge;

# Motrix
brew install --cask motrix;
sudo purge;

# Messengers
brew install --cask discord;
brew install --cask element;
brew install --cask microsoft-teams;
brew install --cask session;
sudo purge;

# Browsers
brew install --cask google-chrome;
brew install --cask microsoft-edge;
brew install --cask firefox-nightly;
brew install --cask firefox-developer-edition;
brew install --cask brave-browser;
brew install --cask eloston-chromium;
brew install --cask safari-technology-preview;
sudo purge;

brew install sf-symbols;
brew install font-inter;
brew install font-jetbrains-mono;
sudo purge;

cargo install amp;
cargo install bat;
cargo install deno;
cargo install du-dust;
cargo install exa;
cargo install fd-find;
cargo install hexyl;
cargo install ripgrep;
cargo install sd;
cargo install starship;
sudo purge;

mkdir -p ~/Code
sudo purge;

sudo ln -s ~/Code/sh-os-landing/macOS/update.sh ~/.u;