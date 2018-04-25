.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-install

test-boot:
	vagrant up

test-install: test-boot
	vagrant ssh -c "su root -c 'pkgin update && pkgin -y install wget' && wget --version"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
