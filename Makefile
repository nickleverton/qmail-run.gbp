DESTDIR=

install:
	install -d $(DESTDIR)/etc/qmail
	install -d $(DESTDIR)/etc/qmail/qmail-start
	install -d $(DESTDIR)/etc/qmail/qmail-smtpd
	install -d $(DESTDIR)/etc/qmail/qmail-smtpd/log

	install -m 0755 run-qmail-start \
		$(DESTDIR)/etc/qmail/qmail-start/run
	install -m 0755 run-qmail-smtpd \
		$(DESTDIR)/etc/qmail/qmail-smtpd/run
	install -m 0755 log-qmail-smtpd \
		$(DESTDIR)/etc/qmail/qmail-smtpd/log/run
	chmod +t $(DESTDIR)/etc/qmail/qmail-smtpd

	install -m 0644 tcp.smtp $(DESTDIR)/etc/qmail/tcp.smtp
