clean:
	rm -rf ./build
	rm -rf ./colors
build: clean
	schemecraft dracula.yml dracula-soft.yml
