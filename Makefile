index.html: index.mjml
	npx mjml $< -o $@
clean:
	rm -f index.html
watch:
	echo index.mjml | entr make
