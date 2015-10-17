srcdir=src
parsefile=Parser.y

.PHONY: all
all: parser
	stack build

.PHONY : repl
repl : parser
	stack exec lambdapi

parser : $(srcdir)/$(parsefile)
	cd $(srcdir) && happy $(parsefile)

.PHONY : doc
doc:
	make -C doc

.PHONY : clean
clean :
	rm -f $(srcdir)/Parser.hs
	make -C doc clean

.PHONY : distclean
distclean : clean
	stack clean
	make -C doc distclean
