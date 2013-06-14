.PHONY: start stop test clean

var/log: 
	mkdir -p var/log

start: node_modules
	./bin/start.sh

stop:
	./bin/stop.sh

test:
	./test/run.sh

node_modules:
	npm install .

clean:
	rm -rf ./node_modules/