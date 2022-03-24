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
	curl -OJL "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal" --output-dir "~/Downloads"
	unzip "~/Downloads/VSCode-darwin-universal.zip"
	rm -rf "~/Downloads/VSCode-darwin-universal.zip"
	mv "~/Downloads/Visual Studio Code.app" "~/Applications"
	open "~/Applications/Visual Studio Code.app"

# for mac
setup-vscode:
	if [ ! -f "/Users/${USER}/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ]; then\
		ln -s "/Users/${USER}/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" "/usr/local/bin/";\
	fi
	mkdir -p ~/.vscode
	cp ./vscode/extensions.txt ~/.vscode
	cp ./vscode/Makefile ~/.vscode
	cp "./vscode/settings.json" "~/Library/Application Support/Code/User/"
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

