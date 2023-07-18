# Makefile

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Created: $$(date)" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean

clean:
	rm -f README.md