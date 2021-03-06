title:      Installation

Installing Python-Markdown
==========================

The Easy Way
------------

The easiest way to install Python-Markdown is simply to type one of the
following commands from the command line as an Admin/Root user:

```bash
pip install markdown
```

or

```bash
easy_install markdown
```

That's it! You're ready to [use](reference.md) Python-Markdown. Enjoy!

Installing on Windows {: #windows }
-----------------------------------

Download the Windows installer (`.exe`) from
[PyPI](http://pypi.python.org/pypi/Markdown)

Double-click the file and follow the instructions.

If you prefer to manually install Python-Markdown in Windows, download the
Zip file, unzip it, and on the command line in the directory you unzipped to,
run the following command:

```text
C://path/to/python.exe setup.py install
```

If you plan to use the provided command line script, you need to make sure your
script directory is on your system path. On a typical Python install of Windows
the Scripts directory is `C:\PythonXX\Scripts\` (were "XX" is the Python version
number, i.e., "27"). Adjust the path according to your system and add to your
system path.

Installing on \*nix Systems {: #linux }
---------------------------------------

From the command line do the following (where 2.x is the version number):

```bash
wget http://pypi.python.org/packages/source/M/Markdown/Markdown-2.x.tar.gz
tar xvzf Markdown-2.x.tar.gz
cd markdown-2.x/
sudo python setup.py install
```

See [PyPI](http://pypi.python.org/pypi/Markdown) for all available versions.

Using the Git Repository {: #git }
----------------------------------

If you're the type that likes to live on the edge, you may want to keep up with
the latest additions and bug fixes in the repository between releases.
Python-Markdown is maintained in a Git repository on GitHub.com. To
get a copy of Python-Markdown from the repository do the following from the
command line:

```bash
git clone git://github.com/Python-Markdown/markdown.git python-markdown
cd python-markdown
python setup.py install
```
