serve: watch
	npx browser-sync start --server build --files build/index.html

validate:
	npx resumed validate

build: validate
	mkdir -p build
	npx resumed render --output build/index.html --format html --theme jsonresume-theme-elegant

deploy: build
	npx netlify deploy -s rrees-resume --dir build

deploy-live: deploy
	npx netlify deploy -s rrees-resume --dir build --prod

publish:
	npx resume publish

watch:
	watchexec -w resume.json 'make build' &
