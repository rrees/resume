
build:
	resume export build/index.html --format html --theme elegant

deploy: build
	netlify deploy -s rrees-resume

publish:
	resume publish
