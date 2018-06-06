# -*- coding: utf-8 -*-

import os

# -- Project information -----------------------------------------------------

project = 'example demo code'
copyright = '2018, lolcat'
author = 'lolcat'

version = ''
release = '1.3.37'


# -- General configuration ---------------------------------------------------

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'breathe',
]

source_suffix = '.rst'

master_doc = 'index'

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# -- Options for HTML output -------------------------------------------------

html_theme = 'alabaster'

# -- Options for breathe (and doxygen) ---------------------------------------

breathe_default_project = 'exampledemocode'
breathe_projects = {
    breathe_default_project: os.path.join('_build', 'doxyxml')
}
breathe_default_members = ('members', 'private-members', 'undoc-members')
