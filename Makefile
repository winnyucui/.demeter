error:
	@echo "Please choose one of the following targets:"
	@echo "   freeze-extensions"
	@echo "   install-extensions"
	@# Alternatively: "Please RTFI(nstall)F(ile)"
	@exit 2

install-demeter:
	git clone https://github.com/winn-cui/.vscode.git

install-extensions:
	cat extensions.txt | xargs -L 1 code --install-extension


setup-vscode:
	cp ./vscode ../.vsscode
	
	# remove for now; in the future, move to correct folder to apply appl user settings
	rm -f ../.vscode/win-settings.json.txt
	

setup-bash:
	cp ./bash/.bashrc ./test

setup-fish:
setup-pyenv:

setup-vscode:
	cd .vscode
	make install-extensions

setup-git:

