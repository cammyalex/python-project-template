.PHONY: install database test quality secure clean

install:
	poetry install

database:

development:
	poetry run uvicorn app.main:app --reload

test:
	poetry run pytest tests/unit tests/integration --cov . --cov-report=html --cov-fail-under 75 --memray 

quality:
	poetry run black models
	poetry run isort models --profile black
	poetry run flake8 models

secure:
	poetry run bandit models -r
	poetry run safety check --policy-file ../../.safety-policy.yml

clean:

uml:
	find spark/ -type f \
	-name __init__.py \
	-execdir sh -c \
	"pwd && poetry run pyreverse . && dot -Tpng classes.dot > classes.png" \;