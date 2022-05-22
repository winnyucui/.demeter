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
	curl -OJL "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal" -o "~/Downloads"
	unzip "~/Downloads/VSCode-darwin-universal.zip"
	rm -rf "~/Downloads/VSCode-darwin-universal.zip"
	mv "~/Downloads/Visual Studio Code.app" "/Applications"
	open "/Applications/Visual Studio Code.app"
	
# for mac
setup-vscode:
	if [ ! -f "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ]; then\
		ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" "/usr/local/bin/";\
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

install-karabiner:
	curl -OJL "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v14.4.0/Karabiner-Elements-14.4.0.dmg" --output "~/Downloads"
	open ~/Downloads/Karabiner-Elements*.dmg
	open "/Applications/Karabiner-Elements.app"

setup-karabiner:
	cp ./karabiner/karabiner.json ../.config/karabiner

install-evernote:
	cd ~/Downloads; curl -OJL "https://cdn1.evernote.com/boron/mac/builds/Evernote-10.33.4-mac-ddl-ga-3285-c3c0da8cee.dmg"
	open ~/Downloads/Evernote*
	rm -rf ~/Downloads/Evernote*
	open "/Applications/Evernote.app"

install-setapp:
	cd "/Users/wcui/Downloads"; curl -OJL "https://go.setapp.com/download/client?satu=8446569f-f79d-43c3-9c60-9edb452be3dc"
	unzip "/Users/wcui/Downloads/InstallSetapp.zip"
	rm -rf "/Users/wcui/Downloads/InstallSetapp.zip"
	open "/Users/wcui/Downloads/Install Setapp.app"

	# rm -rf $(echo "InstallSet*.zip")
	# mv "/Users/wcui/Downloads/Visual Studio Code.app" "/Applications"
	# open "/Applications/Visual Studio Code.app"
	# Install Setapp.app

install-amethyst:
	cd "/Users/wcui/Downloads"; curl -OJL "https://github.com/ianyh/Amethyst/releases/download/v0.15.6/Amethyst.zip"
	unzip "/Users/wcui/Downloads/Amethyst.zip"
	rm -rf "/Users/wcui/Downloads/Amethyst.zip"
	mv "/Users/wcui/Downloads/Amethyst.app" "/Applications"
	open "/Applications/Amethyst.app"


# for mac
install-iterm2:
	cd ~/Downloads; curl -OJL `https://iterm2.com/downloads/stable/latest`
	unzip `/Users/wcui/Downloads/iTerm2*.zip`
	rm -rf `/Users/wcui/Downloads/iTerm2*.zip`
	mv `/Users/wcui/Downloads/iTerm.app` `/Applications`
	open ('/Applications/iTerm.app')


install-dbeaver:



setup-fish:
setup-pyenv:
setup-git:

