ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 open-cas-kmod-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 open-cas-kmod.conf $(CONFDIR)/kvc/
	install -v -m 755 open-cas-kmod-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/open-cas-kmod-wrapper.sh $(DESTDIR)/bin/casadm