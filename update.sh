#!/bin/sh

# Echo wrapping flag
ECHO_WRAPPING=0;

# Detect if echo wrapping has to be done
if echo $SHELL | grep zsh &> /dev/null;
then
	ECHO_WRAPPING=1;
elif [ $0 = "bash" ];
then
	ECHO_WRAPPING=1;
fi;

# Enable Color Formatting by wrapping echo function in eccho
eccho () {
	if [ $ECHO_WRAPPING = 1 ];
	then
		echo -e $1;
	else
		echo $1;
	fi;
}


R_A='\033[0m';
R_C='\033[0;31m';
G_C='\033[0;32m';
Y_C='\033[1;33m';
B_C='\033[0;34m';
PRP_CLR='\033[0;35m';
B_S='\033[0;1m';
D_S='\033[0;2m';
ORANGE='\033[0;33m';
CYAN='\033[0;36m';
LIGHTGRAY='\033[0;37m';
DARKGRAY='\033[1;30m';
LIGHTRED='\033[1;31m';
LIGHTGREEN='\033[1;32m';
LIGHTBLUE='\033[1;34m';
LIGHTPURPLE='\033[1;35m';
LIGHTCYAN='\033[1;36m';
WHITE='\033[1;37m';

eccho "${B_C}==>${R_A} ${B_S}Move to the right directory (~)${R_A} ${D_S}...${R_A} : ${Y_C}...${R_A}";
cd ~;
eccho "${G_C}==>${R_A} ${B_S}Move to the right directory (~)${R_A} ${D_S}...${R_A} : ${G_C}Done.${R_A}";

eccho "${B_C}==>${R_A} ${B_S}Purging Memory${R_A} ${D_S}....................${R_A} : ${Y_C}...${R_A}";
sudo purge;
eccho "${G_C}==>${R_A} ${B_S}Purging Memory${R_A} ${D_S}....................${R_A} : ${G_C}Done.${R_A}";

eccho "${B_C}==>${R_A} ${B_S}Executing Periodic Scripts${R_A} ${D_S}........${R_A} : ${Y_C}...${R_A}";
sudo periodic daily weekly monthly;
sudo periodic . daily weekly monthly;
sudo periodic .. daily weekly monthly;
eccho "${G_C}==>${R_A} ${B_S}Executing Periodic Scripts${R_A} ${D_S}........${R_A} : ${G_C}Done.${R_A}";

eccho "${B_C}==>${R_A} ${B_S}Updating Apps from Mac AppStore${R_A} ${D_S}...${R_A} : ${Y_C}...${R_A}";
if ! command -v mas &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Apps from Mac AppStore${R_A} ${D_S}...${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Apps from Mac AppStore${R_A} ${D_S}...${R_A} : ${R_C}mas command not found.${R_A}";
else
	sudo mas upgrade;
	(sudo mas outdated | grep '\(' | cut -d " " -f 1 | xargs -n1 sudo mas upgrade) &> /dev/null;
	eccho "${B_C}==>${R_A} ${B_S}Updating Apps from Mac AppStore${R_A} ${D_S}...${R_A} : ${G_C}Done.${R_A}";
fi


eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}...${R_A}";
if ! command -v brew &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${R_C}brew command not found.${R_A}";
else
	eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}cleaning cache...${R_A}";
	(brew cleanup -s && brew cleanup && sudo rm -rfd "$(brew --cache)") &> /dev/null;
	eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}updating brew repository...${R_A}";
	(brew update) &> /dev/null;
	eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}upgrading brew cli tools...${R_A}";
	brew upgrade;
	eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}upgrading brew cask apps...${R_A}";
	brew upgrade --cask --greedy;
	eccho "${B_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${Y_C}cleaning cache...${R_A}";
	(brew cleanup -s && brew cleanup && sudo rm -rfd "$(brew --cache)") &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Executing Homebrew Routine${R_A} ${D_S}........${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${Y_C}...${R_A}";
if ! command -v npm &> /dev/null;
then
    eccho "${R_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${R_C}npm command not found.${R_A}";
else
	eccho "${B_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${Y_C}cleaning cache...${R_A}";
	sudo npm cache verify &> /dev/null;
	sudo npm cache clean --force &> /dev/null;
	eccho "${B_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${Y_C}updating globally installed modules...${R_A}";
	sudo npm update -g &> /dev/null;
	eccho "${B_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${Y_C}cleaning cache...${R_A}";
	sudo npm cache clean --force &> /dev/null;
	sudo npm cache verify &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Executing NPM Routine${R_A} ${D_S}.............${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Executing Yarn Routine${R_A} ${D_S}............${R_A} : ${Y_C}...${R_A}";
if ! command -v yarn &> /dev/null;
then
    eccho "${R_C}==>${R_A} ${B_S}Executing Yarn Routine${R_A} ${D_S}............${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Executing Yarn Routine${R_A} ${D_S}............${R_A} : ${R_C}yarn command not found.${R_A}";
else
	eccho "${B_C}==>${R_A} ${B_S}Executing Yarn Routine${R_A} ${D_S}............${R_A} : ${Y_C}cleaning cache...${R_A}";
	sudo yarn cache clean &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Executing Yarn Routine${R_A} ${D_S}............${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Updating rustup${R_A} ${D_S}...................${R_A} : ${Y_C}...${R_A}";
if ! command -v rustup &> /dev/null;
then
    eccho "${R_C}==>${R_A} ${B_S}Updating rustup${R_A} ${D_S}...................${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating rustup${R_A} ${D_S}...................${R_A} : ${R_C}rustup command not found.${R_A}";
else
	sudo rustup update &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Updating rustup${R_A} ${D_S}...................${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Updating Python 2.7 (macOS)${R_A} ${D_S}.......${R_A} : ${Y_C}...${R_A}";
if ! command -v /usr/bin/python2.7 &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 2.7 (macOS)${R_A} ${D_S}.......${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 2.7 (macOS)${R_A} ${D_S}.......${R_A} : ${R_C}python2.7 not found.${R_A}";
else
	sudo /usr/bin/python2.7 -m pip install --upgrade --user pip &> /dev/null;
	sudo /usr/bin/python2.7 -m pip list --outdated | grep '\.' | cut -d " " -f 1 | xargs -n1 sudo /usr/bin/python2.7 -m pip install --upgrade --user &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Updating Python 2.7 (macOS)${R_A} ${D_S}.......${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Updating Python 3 (macOS)${R_A} ${D_S}.........${R_A} : ${Y_C}...${R_A}";
if ! command -v /usr/bin/python3 &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3 (macOS)${R_A} ${D_S}.........${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3 (macOS)${R_A} ${D_S}.........${R_A} : ${R_C}python3 not found.${R_A}";
else
	sudo /usr/bin/python3 -m pip install --upgrade --user pip &> /dev/null;
	(sudo /usr/bin/python3 -m pip list --outdated | grep '\.' | cut -d " " -f 1 | xargs -n1 sudo /usr/bin/python3 -m pip install --upgrade --user) &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Updating Python 3 (macOS)${R_A} ${D_S}.........${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Updating Python 3.7 (Homebrew)${R_A} ${D_S}....${R_A} : ${Y_C}...${R_A}";
if ! command -v /usr/local/opt/python@3.7/bin/python3 &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.7 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.7 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}python3.7 not found.${R_A}";
else
	sudo /usr/local/opt/python@3.7/bin/python3 -m pip install --upgrade --user pip &> /dev/null;
	(sudo /usr/local/opt/python@3.7/bin/python3 -m pip list --outdated | grep '\.' | cut -d " " -f 1 | xargs -n1 sudo /usr/local/opt/python@3.7/bin/python3 -m pip install --upgrade --user) &> /dev/null;
	eccho "${G_C}==>${R_A} ${B_S}Updating Python 3.7 (Homebrew)${R_A} ${D_S}....${R_A} : ${G_C}Done.${R_A}";
fi

eccho "${B_C}==>${R_A} ${B_S}Updating Python 3.8 (Homebrew)${R_A} ${D_S}....${R_A} : ${Y_C}...${R_A}";
if ! command -v /usr/local/opt/python@3.8/bin/python3 &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.8 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.8 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}python3.8 not found.${R_A}";
else
	sudo /usr/local/opt/python@3.8/bin/python3 -m pip install --upgrade --user pip &> /dev/null;
	(sudo /usr/local/opt/python@3.8/bin/python3 -m pip list --outdated | grep '\.' | cut -d " " -f 1 | xargs -n1 sudo /usr/local/opt/python@3.8/bin/python3 -m pip install --upgrade --user) &> /dev/null;
fi
eccho "${G_C}==>${R_A} ${B_S}Updating Python 3.8 (Homebrew)${R_A} ${D_S}....${R_A} : ${G_C}Done.${R_A}";


eccho "${B_C}==>${R_A} ${B_S}Updating Python 3.9 (Homebrew)${R_A} ${D_S}....${R_A} : ${Y_C}...${R_A}";
if ! command -v /usr/local/opt/python@3.9/bin/python3 &> /dev/null;
then
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.9 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}Failed.${R_A}";
	eccho "${R_C}==>${R_A} ${B_S}Updating Python 3.9 (Homebrew)${R_A} ${D_S}....${R_A} : ${R_C}python3.9 not found.${R_A}";
else
	sudo /usr/local/opt/python@3.9/bin/python3 -m pip install --upgrade --user pip &> /dev/null;
	(sudo /usr/local/opt/python@3.9/bin/python3 -m pip list --outdated | grep '\.' | cut -d " " -f 1 | xargs -n1 sudo /usr/local/opt/python@3.9/bin/python3 -m pip install --upgrade --user) &> /dev/null;
fi
eccho "${G_C}==>${R_A} ${B_S}Updating Python 3.9 (Homebrew)${R_A} ${D_S}....${R_A} : ${G_C}Done.${R_A}";

eccho "${B_C}==>${R_A} ${B_S}Purging Memory${R_A} ${D_S}....................${R_A} : ${Y_C}...${R_A}";
sudo purge;
eccho "${G_C}==>${R_A} ${B_S}Purging Memory${R_A} ${D_S}....................${R_A} : ${G_C}Done.${R_A}";


eccho "\n\nYou can reboot your Mac now.\n\n";
