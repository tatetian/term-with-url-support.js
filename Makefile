all:
	@cp src/term.js term.js
	@uglifyjs -o term.min.js term.js

clean:
	@rm term.js
	@rm term.min.js

example:
	@node example/index.js

bench:
	@node test/bench

.PHONY: clean all example bench
