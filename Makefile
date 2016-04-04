start:
	git submodule init
	git submodule update
	cp ssl/* tugboat/ssl/
	cp docker-compose.override.yml tugboat/
	cd tugboat && make start
stop:
	cd tugboat && make stop
