.PHONY: build
build:
	nix build .#default
	@echo '>>> You can find tinyfilemanager.zip inside the ./result directory'

.PHONY: clean
clean:
	rm -rf result
