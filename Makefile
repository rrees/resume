serve:
	npx resume serve --theme elegant

validate:
	npx resume validate

build: validate
	npx resume export build/index.html --format html --theme elegant

deploy: build
	npx netlify deploy -s rrees-resume

publish:
	npx resume publish
