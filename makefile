install:
	poetry install

development:
	poetry run uvicorn app.main:app --reload

test:
	poetry run pytest tests

quality:
	poetry run black .
	poetry run isort . --profile black
	poetry run flake8 .

secure:
	poetry run bandit -r
	poetry run safety check --policy-file ../../.safety-policy.yml

clean:

uml:
	find spark/ -type f \
	-name __init__.py \
	-execdir sh -c \
	"pwd && poetry run pyreverse . && dot -Tpng classes.dot > classes.png" \;