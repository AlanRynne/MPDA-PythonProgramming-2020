FILES = $(wildcard markdown-slides/*.md)
OUT = $(addprefix docs/slides/,$(notdir $(FILES:.md=.html)))

docs/slides/%.html: markdown-slides/%.md
	pandoc -t revealjs -s -o $@ $^ -V revealjs-url=https://revealjs.com --slide-level 2

slides: $(OUT)

print-%  : ; @echo $* = $($*)
