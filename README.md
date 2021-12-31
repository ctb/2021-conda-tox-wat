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

## Error output:

```
rm -fr .tox UNKNOWN.egg-info
tox -e py39
.package create: /home/ctbrown/2021-conda-tox-wat/.tox/.package
.package installdeps: setuptools >= 48
ERROR: invocation failed (exit code 2), logfile: /home/ctbrown/2021-conda-tox-wat/.tox/.package/log/.package-1.log
================================== log start ===================================
/tmp/tmpp10ke8je: 146: /home/ctbrown/miniconda3/envs/failme2/etc/conda/deactivate.d/deactivate-gcc_linux-64.sh: Syntax error: "(" unexpected (expecting "fi")

=================================== log end ====================================
ERROR: could not install deps [setuptools >= 48]; v = InvocationError("/home/ctbrown/2021-conda-tox-wat/.tox/.package/bin/python -m pip install 'setuptools >= 48'", 2)
py39 create: /home/ctbrown/2021-conda-tox-wat/.tox/py39
py39 inst: /home/ctbrown/2021-conda-tox-wat/.tox/.tmp/package/1/UNKNOWN-0.0.0.tar.gz
py39 installed: UNKNOWN @ file:///home/ctbrown/2021-conda-tox-wat/.tox/.tmp/package/1/UNKNOWN-0.0.0.tar.gz
py39 run-test-pre: PYTHONHASHSEED='2953931048'
___________________________________ summary ____________________________________
  py39: commands succeeded
  congratulations :)
```
