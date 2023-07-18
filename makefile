# Makefile

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "The date and time at which make was run: $$(date)" >> README.md
	echo >> README.md
	echo "The number of lines of code contained in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean

clean:
	rm -f README.md