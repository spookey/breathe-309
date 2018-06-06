
help:
	@echo "example demo code"
	@echo
	@echo "doxyxml  - generate xml with doxygen"
	@echo "docapi   - generate documentation with breathe-apidoc"
	@echo "doc      - run sphinx-build"
	@echo
	@echo "clean    - clean sphinx output"
	@echo "cleanapi - clean sphinx and apidoc"


DIR_DOC		=	doc
DIR_DOCAPI	=	$(DIR_DOC)/api

DIR_BUILD	=	$(DIR_DOC)/_build
DIR_DOXYXML	=	$(DIR_BUILD)/doxyxml


$(DIR_BUILD):
	mkdir -p "$(DIR_BUILD)"

docxml: $(DIR_BUILD)
	cd "$(DIR_DOC)" && doxygen

docapi: docxml
	breathe-apidoc -o "$(DIR_DOCAPI)" "$(DIR_DOXYXML)"

doc: docapi
	sphinx-build -M "html" "$(DIR_DOC)" "$(DIR_BUILD)"

clean:
	sphinx-build -M "clean" "$(DIR_DOC)" "$(DIR_BUILD)"

cleanapi: clean
	rm -rfv "$(DIR_DOCAPI)"
