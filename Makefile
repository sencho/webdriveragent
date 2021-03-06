git_version = $$(git branch 2>/dev/null | sed -e '/^[^*]/d'-e's/* \(.*\)/\1/')
npm_bin= $$(npm bin)

all: test
install:
	@npm install
zip:
	zip -r WebDriverAgent.zip ./WebDriverAgent
test: zip install
	@node --harmony \
		${npm_bin}/istanbul cover ${npm_bin}/_mocha \
		-- \
		--timeout 120000 \
		--require co-mocha
jshint:
	@${npm_bin}/jshint .
.PHONY: test
