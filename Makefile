XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
CB_TEMPLATES_DIR=Templates/CB\ Templates
CB_TEMPLATES_FOLDER_NAME=CB\ Templates

install_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(CB_TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cp -R -f $(CB_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(CB_TEMPLATES_FOLDER_NAME)