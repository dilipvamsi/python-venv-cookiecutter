CODE_ROOT := ${PWD}

ifeq (${OS},Windows_NT)
	PYTHON_DIR := .\\venv\\Scripts\\
	PYTHON := .\\venv\\Scripts\\python
	PIP := .\\venv\\Scripts\\pip
	JUPYTER_NOTEBOOK := .\\venv\\Scripts\\jupyter-notebook
	IPYTHON := .\\venv\\Scripts\\ipython
else
	PYTHON_DIR := ./venv/bin/
	PYTHON := ./venv/bin/python
	PIP := ./venv/bin/pip
	JUPYTER_NOTEBOOK := ./venv/bin/jupyter-notebook
	IPYTHON := ./venv/bin/ipython
endif

clean-venv:
	rm -rf venv

venv-setup:
	python3.6 -m venv --without-pip venv
	curl https://bootstrap.pypa.io/get-pip.py | ${PYTHON}

make-interactive:
	${PIP} install --prefer-binary ipython pylint pep8 flake8 pydocstyle rope jupyter

run-python:
	PYTHONPATH=${PYTHONPATH}:${CODE_ROOT} \
		${PYTHON}

run-ipython:
	PYTHONPATH=${PYTHONPATH}:${CODE_ROOT} \
		${IPYTHON}

run-jupyter:
	mkdir -p ./jupyter
	PYTHONPATH=${PYTHONPATH}:${CODE_ROOT} \
		${JUPYTER_NOTEBOOK} --ip='0.0.0.0' ./jupyter/
