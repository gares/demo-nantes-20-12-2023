

all:
	@$(foreach algo,hm j,\
	  echo && echo Algorithm $(algo) && \
	  ($(foreach x,1 2 3 4 5, elpi $(algo).elpi main.elpi -exec tests -- $(x) && ) true) >ref 2>/dev/null && \
	  diff -u ref.ok.$(algo) ref && \
	  cat ref && \
	  ($(foreach x,1 2 3 4 5 6, ! elpi $(algo).elpi main.elpi -exec tests -- -$(x) && ) true) >ref 2>/dev/null && \
	  diff -u ref.ko.$(algo) ref && \
	  cat ref &&) true

one:
	@elpi $(algo).elpi main.elpi -exec tests -- $(t) 2>/dev/null
