#!/bin/python3

import os, sys, shutil


def get_file_tree(directory):
	list_of_files = os.listdir(directory)
	all_files = []

	for iter in list_of_files:
		full_path = os.path.join(directory, iter)
		if os.path.isdir(full_path):
			all_files = all_files + get_file_tree(full_path)
		else:
			all_files.append(full_path)

	return all_files



def build_all(file_format):
	for iter in get_file_tree("src"):
		build_file(iter, file_format)


def build_file(file_to_build, file_format, output=None): # EXAMPLE: file_to_build="src/helloworld.asy", file_format="svg", output="~/Pictures/helloworld"
	filename = file_to_build.split(".")
	filename = filename[0]
	filename = filename.split("/")
	filename.pop(0)
	filename = "/".join(filename)
	directories = filename.split("/")
	directory = directories
	directory.pop()
	directory = "/".join(directory)
	if os.path.exists("output/" + file_format + "/" + directory) and os.path.isdir("output/" + file_format + "/" + directory):
		pass # It exists
	else:
		#print("Creating directory output/" + file_format + "/" + directory)
		os.system("mkdir -p output/" + file_format + "/" + directory)
	print("Building " + file_to_build + " to " + "output/" + file_format + "/" + filename + "." + file_format)
	if output:
		os.system("asy -f " + file_format + " -antialias 5 " + file_to_build + " -o " + output)
	else:
		os.system("asy -f " + file_format + " -antialias 5 " + file_to_build + " -o output/" + file_format + "/" + filename)

def print_help():
	print("""
Graphics compilation wrapper

Use "make all" to compile all graphics in all formats
Use "make all [svg|png|webp]" to compile all graphics in a specific format

Flags:
	-h or --help                     - Show this message
	-s [graphic name] [svg|png|webp] - Compile a specific graphic
	-o [output file]                 - Compile to a specific file (only works after -s)
	-r                               - Remove the output directory before compiling

Examples:
- make all
- make all svg
- make -s src/helloworld.asy svg
- make -s src/helloworld.asy svg -o ~/Pictures/helloworld
""")


if len(sys.argv) != 1:
	if sys.argv[1] == "-h" or sys.argv[1] == "--help":
		print_help()

	if sys.argv[1] == "-r":
		sys.argv.pop(1)
		print("Removing output directory...")
		shutil.rmtree("output") # Scary
		print("Output directory removed")
		sys.exit()

	if sys.argv[1] == "all":
		if len(sys.argv) == 3:
			build_all(sys.argv[2])

		else:
			if len(sys.argv) == 2:
				#print("Compiling all graphics")
				build_all("svg")
				build_all("png")
				build_all("webp")
			else:
				print("Unknown command", file=sys.stderr)

	elif sys.argv[1] == "-s":
		if len(sys.argv) == 6:
			build_file(sys.argv[2], sys.argv[3], output=sys.argv[5])
		elif len(sys.argv) == 4:
			build_file(sys.argv[2], sys.argv[3])

	else:
		print("Unknown command", file=sys.stderr) # Not sure if this is the proper way to print an error

else:
	print_help()
