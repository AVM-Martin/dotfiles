
SHELL:=bash


.PHONY: check-shell
check-shell:
	@echo "b is $$0"


.PHONY: check-install-script
check-install-script:
	@diff \
		<(grep -B 2 "function AVM_install" sbin/darwin_AVM_install.sh) \
		<(grep -B 2 "function AVM_install" sbin/ubuntu_AVM_install.sh)


# ==========================================================
# from staging mac laptop
# ==========================================================

STOW = stow

.PHONY: link
link:
	@${STOW} --dir .config --target="$${HOME}/.config" --verbose .
	@${STOW} --dir .local --target="$${HOME}/.local" --verbose .


.PHONY: unlink
unlink:
	@${STOW} --dir .config --target="$${HOME}/.config" --verbose --delete .
	@${STOW} --dir .local --target="$${HOME}/.local" --verbose --delete .


.PHONY: purge
purge:
	@${STOW} --dir .config --target="$${HOME}/.config" --verbose --restow --no .
	@${STOW} --dir .local --target="$${HOME}/.local" --verbose --restow --no .





all:
	stow --verbose --target=$$HOME --restow */

delete:
	stow --verbose --target=$$HOME --delete */


