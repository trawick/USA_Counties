all: images/USA_Counties.svg

# Apply fixes to the original version from Wikimedia.
images/USA_Counties.svg: images/original/USA_Counties.svg images/patches/fix_wikimedia_USA_Counties.svg
	patch -p0 images/original/USA_Counties.svg images/patches/fix_wikimedia_USA_Counties.svg -o images/USA_Counties.svg

# Create patch file after making changes to images/USA_Counties.svg.
patch:
	diff -u images/original/USA_Counties.svg images/USA_Counties.svg > images/patches/fix_wikimedia_USA_Counties.svg; test $$? -eq 1
