DESTDIR=

install:
	install -d $(DESTDIR)/var/supervise/qmail
	install -d $(DESTDIR)/var/supervise/qmail/start
	install -d $(DESTDIR)/var/supervise/qmail/smtpd
	install -d $(DESTDIR)/var/supervise/qmail/smtpd/log

	install -m 0755 run-qmail-start \
		$(DESTDIR)/var/supervise/qmail/start/run
	install -m 0755 run-qmail-smtpd \
		$(DESTDIR)/var/supervise/qmail/smtpd/run
	install -m 0755 log-qmail-smtpd \
		$(DESTDIR)/var/supervise/qmail/smtpd/log/run
	chmod +t $(DESTDIR)/var/supervise/qmail/smtpd

	install -m 0644 tcp.smtp $(DESTDIR)/etc/qmail/tcp.stmp
	install -m 0644 aliases $(DESTDIR)/etc/aliases
