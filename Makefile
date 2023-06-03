SHELL = /bin/bash

.ONESHELL:
venv:
	python3.10 -m venv venv && \
    source venv/bin/activate && \
    python3.10 -m pip install --upgrade pip setuptools wheel && \
    python3.10 -m pip install -e ".[dev]" && \
    pre-commit install && \
    pre-commit autoupdate