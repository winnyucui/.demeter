error:
	@echo "Please choose one of the following targets:"
	@echo "   freeze-extensions"
	@echo "   install-extensions"
	@# Alternatively: "Please RTFI(nstall)F(ile)"
	@exit 2

freeze-extensions:
	code --list-extensions > extensions.txt

install-extensions:
	cat extensions.txt | xargs -L 1 code --install-extension