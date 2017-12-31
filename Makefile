BOX=vagrant-netbsd-pkgin.box

.PHONY: launch-vm clean-vm clean-boxes clean-vagrant-metadata

launch-vm:
	vagrant up

test: launch-vm
	vagrant ssh -c "su root -c 'pkgin update && pkgin install wget' && wget --version"

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vm clean-vagrant-metadata

$(BOX): clean launch-vm
	vagrant package --output $(BOX) --vagrantfile export.Vagrantfile
