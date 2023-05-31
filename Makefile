.PHONY: setup
setup: setup-ci
	pre-commit install

.PHONY: setup-ci
setup-ci:
	npm install
