.PHONY: paper.md paper.html clean

paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
	cd paper/sections; pandoc *.md -s -o paper.md
	cd paper/sections; mv paper.md ../

paper.html: paper/paper.md
	cd paper; pandoc *.md -s -o paper.html

clean:
	rm -f paper/paper.html
