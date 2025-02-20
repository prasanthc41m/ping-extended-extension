all: clean build

PLUGIN_LOCATION = ~/.local/share/gnome-shell/extensions/ping-extended@prasanthc41m.github.com

build:
	zip ping-extended-extension.zip extension.js LICENSE metadata.json 

install:
	mkdir -p $(PLUGIN_LOCATION)
	cp -R audio extension.js metadata.json LICENSE $(PLUGIN_LOCATION)
	echo 'Plugin installed. Restart GNOME Shell.'

uninstall:
	rm -rf $(PLUGIN_LOCATION)

reinstall: uninstall install

clean:
	rm -f *.zip
