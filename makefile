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
