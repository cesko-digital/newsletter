index.html: index.mjml
	npx mjml $< -o $@
copy: index.html
	pbcopy < $<
clean:
	rm -f index.html
watch:
	echo index.mjml | entr make
