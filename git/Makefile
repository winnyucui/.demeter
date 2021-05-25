error:
	@echo "Please choose one of the following targets:"
	@echo "   freeze-extensions"
	@echo "   install-extensions"
	@# Alternatively: "Please RTFI(nstall)F(ile)"
	@exit 2

VERSION=curl  "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"' 

install-gh-cli:
	# VERSION=$(curl  "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c2-)
	# VERSION=$(curl  "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"' )
	$(eval VERSION = $(curl  "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c2-))

all:;echo $(VERSION)

print-%  : ; @echo $* = $($*)

install-extensions:
	cat extensions.txt | xargs -L 1 code --install-extension