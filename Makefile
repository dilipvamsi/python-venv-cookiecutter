all: test

clean:
	rm -rf /tmp/yourapplication/

test: clean
	cookiecutter . --output-dir /tmp --no-input && \
	make clean
