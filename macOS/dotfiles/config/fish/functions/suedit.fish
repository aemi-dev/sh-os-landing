function suedit
	if test -e $argv[1]
		sudo open -e $argv
	else
		sudo touch $argv[1]
		sudo open -e $argv
	end
end
