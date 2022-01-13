
DEST=./bin
INSTALLDIR=$(DEST)
OUT=./out
TESTS=fitparser fitdataprotocol fitsdkcpp fitsdkobjc fitanalysis fitfitparse fitfitdecode javascript go
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

$(OUT)/go_%.md: go/fit.go
	go run go/fit.go $*.fit > $@

clean:
	/bin/rm -f $(OUT)/*.md $(INSTALLDIR)/fitprotocol $(INSTALLDIR)/fitsdkcpp

.SECONDARY: $(INSTALLDIR)/fitsdkobjc $(INSTALLDIR)/fitsdkcpp
	
$(INSTALLDIR)/%:
	xcodebuild -scheme $* DSTROOT=$(DEST) install
	/bin/mv $(DEST)/usr/local/bin/$* $(DEST)


