# vagrant-netbsd-pkgsrc: a Vagrant box with NetBSD guest + pkgin preinstalled

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-netbsd-pkgin

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "su root -c 'pkgin update && pkgin -y install wget' && wget --version"
GNU Wget 1.19.1 built on netbsd.

-cares +digest -gpgme +https +ipv6 -iri +large-file -metalink +nls
+ntlm +opie -psl +ssl/openssl

Wgetrc:
    /usr/pkg/etc/wgetrc (system)
Locale:
    /usr/pkg/share/locale
Compile:
    gcc -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/usr/pkg/etc/wgetrc"
    -DLOCALEDIR="/usr/pkg/share/locale" -I. -I../lib -I../lib
    -I/usr/pkg/include -I/usr/include -DHAVE_LIBSSL -DNDEBUG -O2
    -D_FORTIFY_SOURCE=2 -I/usr/pkg/include -I/usr/include
Link:
    gcc -DHAVE_LIBSSL -DNDEBUG -O2 -D_FORTIFY_SOURCE=2
    -I/usr/pkg/include -I/usr/include -L/usr/pkg/lib -Wl,-R/usr/pkg/lib
    -L/usr/lib -Wl,-R/usr/lib -lssl -lcrypto -lz ftp-opie.o openssl.o
    http-ntlm.o ../lib/libgnu.a /usr/lib/libintl.so

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-netbsd-pkgin.box
```
