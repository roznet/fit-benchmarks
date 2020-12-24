
DEST=./bin
INSTALLDIR=$(DEST)

test:testsample testlarge

testsample: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser sample.fit
	$(INSTALLDIR)/fitdataprotocol sample.fit
	$(INSTALLDIR)/fitsdkcpp sample.fit
	php php/fitanalysis.php sample.fit
	python3 python/fitfitparse.py sample.fit
	python3 python/fitfitdecode.py sample.fit


testlarge: $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitparser large.fit
	$(INSTALLDIR)/fitdataprotocol large.fit
	$(INSTALLDIR)/fitsdkcpp large.fit
	php php/fitanalysis.php large.fit
	python3 python/fitfitparse.py large.fit
	python3 python/fitfitdecode.py large.fit

clean:
	/bin/rm $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp

$(INSTALLDIR)/fitparser:
	swift build -c release --target fitparser
	/bin/cp `swift build -c release --target fitparser --show-bin-path`/fitparser $(DEST)

$(INSTALLDIR)/fitprotocol:
	swift build -c release --target fitdataprotocol
	/bin/cp `swift build -c release --target fitdataprotocol --show-bin-path`/fitdataprotocol $(DEST)


$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
	/bin/mv $(DEST)/usr/local/bin/fitsdkcpp $(DEST)
