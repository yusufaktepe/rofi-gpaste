ifndef PREFIX
  PREFIX=/usr/local
endif

install:
	install -Dm755 rofi-gpaste -t $(DESTDIR)$(PREFIX)/bin
	install -Dm644 config.example README.md -t $(DESTDIR)$(PREFIX)/share/doc/rofi-gpaste

