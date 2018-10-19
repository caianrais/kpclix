PERL_PATH = $(shell perl -e "print \"@INC\"" | cut -d' ' -f1)

install:
	cp kpcli.pl /usr/local/bin/kpclix \
		&& cp lib/Xclip.pm $(PERL_PATH)

uninstall:
	rm /usr/local/bin/kpclix \
		&& rm $(PERL_PATH)/Xclip.pm
