newsletter.html: newsletter.mjml
	npx mjml $< -o $@
clean:
	rm -f newsletter.html
watch:
	echo newsletter.mjml | entr make
