#!/bin/bash

setup-zsh:
	pushd scripts && ./setup_zsh.sh && popd

setup-antigen:
	pushd scripts && ./setup_antigen.sh && popd

setup-fonts:
	pushd scripts && ./setup_fonts.sh && popd

setup-ssh:
	pushd scripts && ./setup_ssh.sh && popd

setup-git:
	pushd scripts && ./setup_git.sh && popd

setup-vm-fixes:
	pushd scripts && ./setup_vm_fixes.sh && popd

setup-locals:
	pushd scripts && ./setup_locals.sh && popd

setup-themes:
	pushd scripts && ./setup_themes.sh && popd

setup-base: setup-zsh setup-antigen setup-ssh setup-git

update-resource:
	pushd scripts && ./update_resource.sh && popd
