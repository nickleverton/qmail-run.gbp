DESTDIR=

install:
	install -d $(DESTDIR)/etc/qmail
	install -d $(DESTDIR)/etc/qmail/qmail-send
	install -d $(DESTDIR)/etc/qmail/qmail-send/log
#	install -d $(DESTDIR)/etc/qmail/qmail-send/log/main
	install -d $(DESTDIR)/etc/qmail/qmail-smtpd
	install -d $(DESTDIR)/etc/qmail/qmail-smtpd/log
#	install -d $(DESTDIR)/etc/qmail/qmail-smtpd/log/main

	install -m 0644 concurrencyincoming \
		$(DESTDIR)/var/qmail/control/concurrencyincoming

	install -m 0755 run-qmail-send \
		$(DESTDIR)/etc/qmail/qmail-send/run
	install -m 0755 log-qmail-send \
		$(DESTDIR)/etc/qmail/qmail-send/log/run
	chmod +t $(DESTDIR)/etc/qmail/qmail-send
	install -m 0755 run-qmail-smtpd \
		$(DESTDIR)/etc/qmail/qmail-smtpd/run
	install -m 0755 log-qmail-smtpd \
		$(DESTDIR)/etc/qmail/qmail-smtpd/log/run
	chmod +t $(DESTDIR)/etc/qmail/qmail-smtpd

	install -m 0644 tcp.smtp $(DESTDIR)/etc/qmail/tcp.smtp

	install -m 0755 tcprules-smtp $(DESTDIR)/usr/sbin/tcprules-smtp
