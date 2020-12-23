
DEST=./bin
INSTALLDIR=$(DEST)/usr/local/bin

test:testsample testlarge

testsample: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser sample.fit
	$(INSTALLDIR)/fitprotocol sample.fit
	$(INSTALLDIR)/fitsdkcpp sample.fit
	php php/fitanalysis.php sample.fit
	python3 python/fitfitparse.py sample.fit
	python3 python/fitfitdecode.py sample.fit


testlarge: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser large.fit
	$(INSTALLDIR)/fitprotocol large.fit
	$(INSTALLDIR)/fitsdkcpp large.fit
	php php/fitanalysis.php large.fit
	python3 python/fitfitparse.py large.fit
	python3 python/fitfitdecode.py large.fit

clean:
	/bin/rm $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp

$(INSTALLDIR)/fitparser:
	xcodebuild -scheme fitparser DSTROOT=$(DEST) install

$(INSTALLDIR)/fitprotocol:
	xcodebuild -scheme fitprotocol DSTROOT=$(DEST) install

$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
