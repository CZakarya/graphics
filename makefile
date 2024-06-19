# FILE OPTIONS
IN = src
OUT = output


# IMAGE OPTIONS


# ASYMPTOTE OPTIONS


# MAKEFILE OPTIONS
VPATH = $(IN):$(OUT)



%.svg: %.asy
	mkdir -p $(OUT)/svg
	asy -f svg $(OPTIONS) $< -o $(OUT)/svg/$*
