
DEST=./bin
INSTALLDIR=$(DEST)

test:testsample testlarge

testsample: $(INSTALLDIR)/fitsdkcpp
	swift run -c release fitparser sample.fit
	swift run -c release fitdataprotocol sample.fit
	$(INSTALLDIR)/fitsdkcpp sample.fit
	php php/fitanalysis.php sample.fit
	python3 python/fitfitparse.py sample.fit
	python3 python/fitfitdecode.py sample.fit


testlarge: $(INSTALLDIR)/fitsdkcpp
	swift run -c release fitparser large.fit
	swift run -c release fitdataprotocol large.fit
	$(INSTALLDIR)/fitsdkcpp large.fit
	php php/fitanalysis.php large.fit
	python3 python/fitfitparse.py large.fit
	python3 python/fitfitdecode.py large.fit

clean:
	/bin/rm $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp


$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
	/bin/mv $(DEST)/usr/local/bin/fitsdkcpp $(DEST)
