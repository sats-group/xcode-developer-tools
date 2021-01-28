XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

TEMPLATES_DIR=Templates
SNIPPETS_DIR=CodeSnippets

install_templates:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cd $(TEMPLATES_DIR); for d in */ ; do \
		rm -fR $(XCODE_USER_TEMPLATES_DIR)/$$d; \
		cp -R $$d $(XCODE_USER_TEMPLATES_DIR)/$$d; \
	done

uninstall_templates:
	cd $(TEMPLATES_DIR); for d in */ ; do \
		rm -fR $(XCODE_USER_TEMPLATES_DIR)/$$d; \
	done

install_codesnippets:
	mkdir -p $(XCODE_USER_SNIPPETS_DIR)
	cd $(SNIPPETS_DIR); for f in * ; do \
		rm -f $(XCODE_USER_SNIPPETS_DIR)/$$f; \
		cp $$f $(XCODE_USER_SNIPPETS_DIR)/$$d; \
	done

uninstall_codesnippets:
	cd $(SNIPPETS_DIR); for f in * ; do \
		rm -f $(XCODE_USER_SNIPPETS_DIR)/$$f; \
	done
