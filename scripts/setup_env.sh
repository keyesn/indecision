#!/bin/bash

py -3.11 -m venv .venv

.venv/Scripts/activate

py -m pip install --upgrade pip
py -m pip install --upgrade setuptools

pip install poetry

# https://pypi.org/project/poetry-plugin-export/
pip install poetry-plugin-export

poetry env use .venv

poetry install --with dev

poetry run pre-commit install
