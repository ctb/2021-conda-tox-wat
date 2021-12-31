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
.package create: /home/ctbrown/2021-conda-tox-wat/.tox/.package
.package installdeps: setuptools >= 48, setuptools_scm[toml] >= 4, <6, setuptools_scm_git_archive, milksnake, wheel >= 0.29.0
ERROR: invocation failed (exit code 2), logfile: /home/ctbrown/2021-conda-tox-wat/.tox/.package/log/.package-1.log
================================== log start ===================================
/tmp/tmpwzwy8u2q: 146: /home/ctbrown/miniconda3/envs/failme/etc/conda/deactivate.d/deactivate-gcc_linux-64.sh: Syntax error: "(" unexpected (expecting "fi")

=================================== log end ====================================
ERROR: could not install deps [setuptools >= 48, setuptools_scm[toml] >= 4, <6, setuptools_scm_git_archive, milksnake, wheel >= 0.29.0]; v = InvocationError("/home/ctbrown/2021-conda-tox-wat/.tox/.package/bin/python -m pip install 'setuptools >= 48' 'setuptools_scm[toml] >= 4, <6' setuptools_scm_git_archive milksnake 'wheel >= 0.29.0'", 2)
py39 create: /home/ctbrown/2021-conda-tox-wat/.tox/py39
py39 installdeps: pip >= 19.3.1
ERROR: invocation failed (exit code 2), logfile: /home/ctbrown/2021-conda-tox-wat/.tox/py39/log/py39-1.log
================================== log start ===================================
/tmp/tmponbqt9gm: 146: /home/ctbrown/miniconda3/envs/failme/etc/conda/deactivate.d/deactivate-gcc_linux-64.sh: Syntax error: "(" unexpected (expecting "fi")

=================================== log end ====================================
ERROR: could not install deps [pip >= 19.3.1]; v = InvocationError("/home/ctbrown/2021-conda-tox-wat/.tox/py39/bin/python -m pip install 'pip >= 19.3.1'", 2)
___________________________________ summary ____________________________________
ERROR:   py39: could not install deps [pip >= 19.3.1]; v = InvocationError("/home/ctbrown/2021-conda-tox-wat/.tox/py39/bin/python -m pip install 'pip >= 19.3.1'", 2)
```
