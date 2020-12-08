
DEST=./bin
INSTALLDIR=$(DEST)/usr/local/bin

test:testsample testlarge

testsample: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	time $(INSTALLDIR)/fitparser sample.fit
	time $(INSTALLDIR)/fitprotocol sample.fit
	time $(INSTALLDIR)/fitsdkcpp sample.fit
	time php php/fitanalysis.php sample.fit
	time python3 python/fitfitparse.py sample.fit
	time python3 python/fitfitdecode.py sample.fit


testlarge: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	time $(INSTALLDIR)/fitparser large.fit
	time $(INSTALLDIR)/fitprotocol large.fit
	time $(INSTALLDIR)/fitsdkcpp large.fit
	time php php/fitanalysis.php large.fit
	time python3 python/fitfitparse.py large.fit
	time python3 python/fitfitdecode.py large.fit

clean:
	/bin/rm $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp

$(INSTALLDIR)/fitparser:
	xcodebuild -scheme fitparser DSTROOT=$(DEST) install

$(INSTALLDIR)/fitprotocol:
	xcodebuild -scheme fitprotocol DSTROOT=$(DEST) install

$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
