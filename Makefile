DESTDIR=

install:
	install -d -m0755 '$(DESTDIR)'/var/lib/qmail
	install -d -m0755 '$(DESTDIR)'/usr/bin
	install -d -m0755 '$(DESTDIR)'/etc/qmail/qmail-send/log
	install -d -m0755 '$(DESTDIR)'/etc/qmail/qmail-smtpd/log
	install -d -m0755 '$(DESTDIR)'/etc/qmail/qmail-verify/log
	install -d -m0755 '$(DESTDIR)'/var/log/qmail/smtpd
	install -d -m0755 '$(DESTDIR)'/var/log/qmail/verify
	install -m0755 qmail-rc '$(DESTDIR)'/var/lib/qmail/rc
	install -m0644 concurrencyincoming \
	  '$(DESTDIR)'/etc/qmail/concurrencyincoming
	install -m0644 defaultdelivery \
	  '$(DESTDIR)'/etc/qmail/defaultdelivery
	install -m0755 run-qmail-send \
	  '$(DESTDIR)'/etc/qmail/qmail-send/run
	install -m0755 log-qmail-send \
	  '$(DESTDIR)'/etc/qmail/qmail-send/log/run
	install -m0755 run-qmail-smtpd \
	  '$(DESTDIR)'/etc/qmail/qmail-smtpd/run
	install -m0755 log-qmail-smtpd \
	  '$(DESTDIR)'/etc/qmail/qmail-smtpd/log/run
	install -m0755 run-qmail-verify \
	  '$(DESTDIR)'/etc/qmail/qmail-verify/run
	install -m0755 log-qmail-verify \
	  '$(DESTDIR)'/etc/qmail/qmail-verify/log/run
	install -m0644 tcp.smtp '$(DESTDIR)'/etc/qmail/tcp.smtp
	install -m0755 qmailctl '$(DESTDIR)'/usr/bin/qmailctl
