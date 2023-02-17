DOCSDIR = docs_src
BUILDDIR = _build
LOCAL_PORT = 8000
GH_PAGES_DIR = docs

local_docs:
	rm -rf $(GH_PAGES_DIR)
	mkdir $(GH_PAGES_DIR) && touch $(GH_PAGES_DIR)/.nojekyll
	rm -rf $(DOCSDIR)/$(BUILDDIR) && mkdir $(DOCSDIR)/$(BUILDDIR)
	sphinx-build -b html $(DOCSDIR) $(DOCSDIR)/$(BUILDDIR)

github_actions_docs:
	rm -rf $(GH_PAGES_DIR)
	mkdir $(GH_PAGES_DIR) && touch $(GH_PAGES_DIR)/.nojekyll
	rm -rf $(DOCSDIR)/$(BUILDDIR) && mkdir $(DOCSDIR)/$(BUILDDIR)
	sphinx-build -b html $(DOCSDIR) $(DOCSDIR)/$(BUILDDIR)
	@cp -a $(DOCSDIR)/$(BUILDDIR)/* $(GH_PAGES_DIR)