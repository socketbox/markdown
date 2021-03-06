# Python-Markdown makefile

.PHONY : help
help:
	@echo 'Usage: make <subcommand>'
	@echo ''
	@echo 'Subcommands:'
	@echo '    install       Install Python-Markdown locally'
	@echo '    deploy        Register and upload a new release to PyPI'
	@echo '    build         Build a source distribution'
	@echo '    build-win     Build a Windows exe distribution'
	@echo '    docs          Build documentation'
	@echo '    test          Run all tests'
	@echo '    update-tests  Generate html files for updated text files in tests'
	@echo '    clean         Clean up the source directories'

.PHONY : install
install:
	python setup.py install

.PHONY : deploy
deploy:
	python setup.py sdist --formats gztar upload

.PHONY : build
build:
	python setup.py sdist --formats gztar

.PHONY : build-win
build-win:
	python setup.py bdist_wininst

.PHONY : docs
docs:
	mkdocs build --clean

.PHONY : test
test:
	tox

.PHONY : update-tests
update-tests:
	python run-tests.py update

.PHONY : clean
clean:
	rm -f MANIFEST
	rm -f test-output.html
	rm -f *.pyc
	rm -f markdown/*.pyc
	rm -f markdown/extensions/*.pyc
	rm -f *.bak
	rm -f markdown/*.bak
	rm -f markdown/extensions/*.bak
	rm -f *.swp
	rm -f markdown/*.swp
	rm -f markdown/extensions/*.swp
	rm -rf build
	rm -rf dist
	rm -rf tmp
	rm -rf site
	# git clean -dfx'
