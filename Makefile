sources = $(wildcard issues/*.mjml)
objects := $(patsubst issues/%.mjml, build/%.html, $(sources))

all: $(objects)
$(objects): build/%.html: issues/%.mjml
	@mkdir -p build
	@cp static/* build/
	npx mjml $< -o $@
clean:
	rm -rf build
