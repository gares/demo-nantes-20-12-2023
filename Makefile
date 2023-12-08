.DEFAULT:=all

ALGOS=hm j
export COLUMNS=80

typecheck-%:
	@elpi $*.elpi main.elpi -exec print -- >/dev/null 2>/tmp/out ||\
		(echo "Type Error $*"; cat /tmp/out; exit 1)

test-%:
	@elpi $*.elpi main.elpi -exec tests -- $(t)

all: $(foreach algo, $(ALGOS), typecheck-$(algo))
	@$(foreach algo, $(ALGOS),\
	  echo && echo Algorithm $(algo) && \
	  ($(foreach x,1 2 3 4 5, elpi $(algo).elpi main.elpi -exec tests -- $(x) && ) true) >ref 2>/dev/null && \
	  diff -u ref.ok.$(algo) ref && \
	  cat ref && \
	  ($(foreach x,1 2 3 4 5 6, ! elpi $(algo).elpi main.elpi -exec tests -- -$(x) && ) true) >ref 2>/dev/null && \
	  diff -u ref.ko.$(algo) ref && \
	  cat ref &&) true

one: typecheck-$(algo)
	$(MAKE) --no-print-directory test-$(algo) t=$(t) 2>/dev/null
