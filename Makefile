all: setup ## Install dependencies


venv:
	python3 -m venv .venv
	./.venv/bin/python -m pip install --upgrade pip


.PHONY: setup
setup: venv ## Install dependencies
	./.venv/bin/python -m pip install -r requirements.txt


.PHONY: run
run: ## Run the app with no reload
	./.venv/bin/wave run --no-reload cric_app/app.py


.PHONY: clean
clean:
	rm -rf .venv
	rm -rf app-data


.PHONY: dev
dev: ## Run the app with active reload
	./.venv/bin/wave run cric_app/app.py