
DEST=./bin
INSTALLDIR=$(DEST)/usr/local/bin

test:testsample testlarge

testsample: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser sample.fit > /dev/null
	time $(INSTALLDIR)/fitparser sample.fit
	$(INSTALLDIR)/fitprotocol sample.fit > /dev/null
	time $(INSTALLDIR)/fitprotocol sample.fit
	$(INSTALLDIR)/fitsdkcpp sample.fit > /dev/null
	time $(INSTALLDIR)/fitsdkcpp sample.fit
	time php php/fitanalysis.php sample.fit
	time python3 python/fitfitparse.py sample.fit
	time python3 python/fitfitdecode.py sample.fit


testlarge: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser large.fit > /dev/null
	time $(INSTALLDIR)/fitparser large.fit
	time $(INSTALLDIR)/fitprotocol large.fit
	time $(INSTALLDIR)/fitsdkcpp large.fit
	time php php/fitanalysis.php large.fit
	time python3 python/fitfitparse.py large.fit
	time python3 python/fitfitdecode.py large.fit


$(INSTALLDIR)/fitparser:
	xcodebuild -scheme fitparser DSTROOT=$(DEST) install

$(INSTALLDIR)/fitprotocol:
	xcodebuild -scheme fitprotocol DSTROOT=$(DEST) install

$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
