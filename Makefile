SHELL= /bin/bash
PYTHON ?= python


clean:
	rm -f toml/*.c toml/*.so
	rm -rf build/ toml/__pycache__/


inplace:
	$(PYTHON) setup.py build_ext --inplace


build: clean inplace