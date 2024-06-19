# FILE OPTIONS
IN = src
OUT = output


# IMAGE OPTIONS
ANTIALIASING = 5


# ASYMPTOTE OPTIONS
OPTIONS = -antialias $(ANTIALIASING)


# MAKEFILE OPTIONS
VPATH = $(IN):$(OUT)



%.svg: %.asy
	mkdir -p $(OUT)/svg
	asy -f svg $(OPTIONS) $< -o $(OUT)/svg/$*


%.png: %.asy
	mkdir -p $(OUT)/png
	asy -f png $(OPTIONS) $< -o $(OUT)/png/$*

%.webp: %.asy
	mkdir -p $(OUT)/webp
	asy -f webp $(OPTIONS) $< -o $(OUT)/webp/$*
