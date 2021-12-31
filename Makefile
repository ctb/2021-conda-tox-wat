all:
	tox -e py39

clean:
	rm -fr .tox UNKNOWN.egg-info
