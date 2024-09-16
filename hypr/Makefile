hyprland.conf: $(shell hostname)/*.conf common/*.conf | plugins
	cat $^ > $@

.PHONY: plugins
plugins: plugins/hyprsplit/hyprsplit.so

plugins/hyprsplit/hyprsplit.so: plugins/hyprsplit/src/*.cpp | plugins/hyprsplit/src/*.hpp
	cd plugins/hyprsplit && make

.PHONY: clean
clean:
	rm hyprland.conf