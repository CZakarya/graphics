FORMAT = svg
IN = src
OUT = output/$(FORMAT)
VPATH = $(IN):$(OUT)


%.svg: %.asy
	mkdir -p $(OUT)
	asy -f $(FORMAT) $< -o $(OUT)/$*
