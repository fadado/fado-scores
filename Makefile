.SILENT:

all:
	for d in *; do \
		[[ -d "$$d" ]] || continue; \
		[[ -e "$$d/Makefile" ]] || continue; \
		echo Building "$$d"; \
		cd "$$d"; \
		$(MAKE); \
		cd "$$OLDPWD"; \
	done

clean:
	rm -f */*.pdf
