"""TOML setup script."""

from Cython.Build import cythonize
from setuptools import setup, Extension


ext_modules = [
    Extension('toml.encoder', ['toml/encoder.pyx']),
    Extension('toml.decoder', ['toml/decoder.pyx'])
]
ext_modules = cythonize(ext_modules)


setup(
    ext_modules=ext_modules
)
