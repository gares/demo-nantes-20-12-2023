all:
	@($(foreach x,1 2 3 4 5, elpi w.elpi main.elpi -exec tests -- $(x) && ) true) >ref 2>/dev/null
	@diff -u ref.ok ref
	@($(foreach x,1 2 3 4 5 6, ! elpi w.elpi main.elpi -exec tests -- -$(x) && ) true) >ref 2>/dev/null
	@diff -u ref.ko ref
	cat ref.ok ref.ko
