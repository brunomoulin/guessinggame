README.md:
	touch README.md
	echo "## guessinggame" >> README.md
	date >> README.md
	echo "guessinggame.sh has the following number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
