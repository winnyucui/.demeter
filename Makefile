error:
	@echo "Please choose one of the following targets:"
	@echo "   setup-vscode"
	@echo "   install-extensions"
	@# Alternatively: "Please RTFI(nstall)F(ile)"
	@exit 2

install-demeter:
	git clone https://github.com/winn-cui/.vscode.git

setup-vscode:
	mkdir -p ~/.vscode
	cp ./vscode/extensions.txt ~/.vscode
	cp ./vscode/Makefile ~/.vscode
	cp ./vscode/settings.json ~/.vscode
	cp ./vscode/template.code-workspace ~/.vscode
	cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User
	cd ~/.vscode; make install-extensions
	
setup-bash:
	cp ./bash/.bashrc ./test

setup-karabiner:
	cp ./karabiner/karabiner.json ../.config/karabiner

setup-fish:
setup-pyenv:
setup-git:

