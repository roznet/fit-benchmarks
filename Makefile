
DEST=./bin
INSTALLDIR=$(DEST)
OUT=./out
TESTS=fitparser fitdataprotocol fitsdkcpp fitsdkobjc fitanalysis fitfitparse fitfitdecode javascript
TESTS_SAMPLE=$(patsubst %,$(OUT)/%_sample.md,$(TESTS))
TESTS_LARGE=$(patsubst %,$(OUT)/%_large.md,$(TESTS))



testsample: $(OUT) $(TESTS_SAMPLE)
	@grep -h '|' $(OUT)/*sample.md

testlarge: $(OUT) $(TESTS_LARGE)
	@grep -h '|' $(OUT)/*large.md

all: $(OUT) $(TESTS_SAMPLE) $(TESTS_LARGE)
	@grep -h '|' $(OUT)/*.md
	
$(OUT):
	mkdir $(OUT)

$(OUT)/fitparser_%.md: Sources/fitparser/main.swift
	swift run -c release fitparser $*.fit > $@

$(OUT)/fitdataprotocol_%.md: Sources/fitdataprotocol/main.swift
	swift run -c release fitdataprotocol $*.fit > $@

$(OUT)/fitsdkcpp_%.md: $(INSTALLDIR)/fitsdkcpp
	$(INSTALLDIR)/fitsdkcpp $*.fit > $@

$(OUT)/fitsdkobjc_%.md: $(INSTALLDIR)/fitsdkobjc
	$(INSTALLDIR)/fitsdkobjc $*.fit > $@

$(OUT)/fitanalysis_%.md: php/fitanalysis.php
	php php/fitanalysis.php $*.fit > $@

$(OUT)/fitfitparse_%.md: python/fitfitparse.py
	python3 python/fitfitparse.py $*.fit > $@

$(OUT)/fitfitdecode_%.md: python/fitfitdecode.py
	python3 python/fitfitdecode.py $*.fit > $@

$(OUT)/javascript_%.md: javascript/benchmark.js
	node javascript $*.fit > $@

clean:
	/bin/rm $(OUT)/*.md $(INSTALLDIR)/fitparser $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp

$(INSTALLDIR)/fitsdkobjc:
	xcodebuild -scheme fitsdkobjc DSTROOT=$(DEST) install
	/bin/mv $(DEST)/usr/local/bin/fitsdkobjc $(DEST)

$(INSTALLDIR)/fitsdkcpp:
	xcodebuild -scheme fitsdkcpp DSTROOT=$(DEST) install
	/bin/mv $(DEST)/usr/local/bin/fitsdkcpp $(DEST)
