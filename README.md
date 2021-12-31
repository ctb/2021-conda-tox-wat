# Demonstrate a frustrating problem with some conda packages on linux

See https://github.com/sourmash-bio/sourmash/issues/1778 for more info.

---

## To run:

Create a conda environment, activate it, and run `tox`.

```
mamba env create -n failme -f environment.yml
conda activate failme
tox -e py39
```
