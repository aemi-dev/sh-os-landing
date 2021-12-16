function edit
	if test -e $argv[1]
		open -e $argv
	else
		touch $argv[1]
		open -e $argv
	end
end