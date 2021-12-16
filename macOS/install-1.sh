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
homebrew/aliases
homebrew/autoupdate
homebrew/bundle
homebrew/cask
homebrew/cask-drivers
homebrew/cask-fonts
homebrew/cask-versions
buo/cask-upgrade
homebrew/core
homebrew/command-not-found
homebrew/services
homebrew/test-bot
github/gh
cvc4/cvc4
snyk/tap
wpscanteam/tap
sudo purge;

# Terminal Shell
brew install fish bash zsh curl wget;

# macOS Related
brew install mas;

# Install basic packages
brew install gcc git git-lfs cmake clang-format gdbm;

sudo purge;

# JS Related
brew install node deno yarn;

# PHP Related
brew install composer;

# Install some basic npm packages
sudo npm install -g npm chai clean-css documentation eslint growl jsdoc jshint mocha npm nodemon nvm playwright terser vue;
sudo purge;

# Install some basics brew-core
brew install python@3.10 python@3.9 python@3.8 python@3.7;
brew install ipython ruby rust ocaml jupyterlab;
brew install youtube-dl webp woff2 mkcert mysql httpd ffmpeg lame nmap openssl openssl@1.1 openssl@3 snyk swift openssh;
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
sudo purge;

# VPN
brew install openvpn;
brew install --cask nextdns openvpn-connect windscribe lulu netiquette;

# Clouds
brew install --cask google-drive dropbox;
sudo purge;

# Basic Needs
brew install --cask macfuse openjdk;
sudo purge;

# Editors
brew install --cask visual-studio-code;
sudo purge;

# Virtualization
brew install --cask virtualbox virtualbox-extension-pack utm;
sudo purge;

# System tools
brew install -- cask maintenance appcleaner macs-fan-control turbo-boost-switcher fig xquartz;
sudo purge;

# Useful Tools
brew install --cask forklift dash iina imageoptim calibre deepl netnewswire audacity obs camo-studio jabra-direct logitech-g-hub;
sudo purge;

# Motrix
brew install --cask motrix;
sudo purge;

# Messengers
brew install --cask discord element microsoft-teams session;
sudo purge;

# Browsers
brew install --cask google-chrome microsoft-edge firefox-nightly firefox-developer-edition brave-browser eloston-chromium safari-technology-preview;
sudo purge;

brew install sf-symbols font-inter font-jetbrains-mono;
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


# sh update.sh;
