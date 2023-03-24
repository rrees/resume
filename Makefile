serve:
	npx resume serve --theme elegant --dir build

validate:
	npx resume validate

build: validate
	mkdir -p build
	npx resume export build/index.html --format html --theme elegant

deploy: build
	npx netlify deploy -s rrees-resume --dir build

deploy-live: deploy
	npx netlify deploy -s rrees-resume --dir build --prod

publish:
	npx resume publish
