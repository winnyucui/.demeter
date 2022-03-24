error:
	@echo "Please choose one of the following targets:"
	@echo "   setup-vscode"
	@echo "   install-extensions"
	@# Alternatively: "Please RTFI(nstall)F(ile)"
	@exit 2

install-demeter:
	git clone https://github.com/winn-cui/.vscode.git

# for mac
install-vscode:
	cd ~/Downloads
	curl "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal" -OJL
	unzip VSCode-darwin-universal.zip
	mv "Visual Studio Code.app" ~/Applications
	cd ~/Applications
	open "Visual Studio Code.app"

setup-vscode:
	cp -r ./vscode ../.vscode
	cd ../.vscode; make install-extensions
	
setup-bash:
	cp ./bash/.bashrc ./test

setup-fish:
setup-pyenv:
setup-git:

