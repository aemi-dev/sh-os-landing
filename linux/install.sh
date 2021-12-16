sudo mkdir -p /usr/share/fonts/standards
sudo mkdir -p /root/themes/Inter/gnome-shell
sudo mkdir -p $HOME/.themes/Inter/gnome-shell

export CURR_DIR=$(pwd)

sudo mkdir $CURR_DIR/tmp_fonts

cd $CURR_DIR/tmp_fonts

sudo curl -sL https://api.github.com/repos/rsms/inter/releases/latest | jq -r '.assets[].browser_download_url' | xargs -n1 sudo wget -q -O Inter.zip; 
sudo curl -sL https://api.github.com/repos/JetBrains/JetBrainsMono/releases/latest | jq -r '.assets[].browser_download_url' | xargs -n1 sudo  wget -q -O JetBrains.zip;

sudo unzip Inter.zip -d Inter;
sudo unzip JetBrains.zip -d JetBrains;


sudo cp ./Inter/Inter\ Desktop/Inter*.otf /usr/share/fonts/standards/
sudo cp ./JetBrains/fonts/ttf/JetBrains*.ttf /usr/share/fonts/standards/

cd $CURR_DIR

sudo rm -Rdf $CURR_DIR/tmp_fonts

sudo tee ~/.themes/Inter/gnome-shell/gnome-shell.css << EOF
stage {font-family: 'Inter';}
monospace {font-family: 'JetBrains Mono';}

EOF

sudo cp ~/.themes/Inter/gnome-shell/gnome-shell.css /root/.themes/Inter/gnome-shell/;
