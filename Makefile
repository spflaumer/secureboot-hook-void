.PHONY: all remove

all: install

install:
	@echo "installing the hook..."
	@install -m 755 -o root kernel.d/post-install/30-secureboot -T /etc/kernel.d/post-install/30-secureboot
	@install -m 644 -o root kernel.d/secureboot.conf -T /etc/kernel.d/secureboot.conf
	@echo "hook has been installed"

remove:
	@echo "removing..."
	@find . -type f -name \*secureboot\* -exec rm /etc/{} \;
	@echo "hook has been removed"
