test_all:
	make test_js
	make test_php
	make test_ruby
	make test_bash
	make test_python

test_js:
	docker build -t hello_world_js -f dockerfiles/js.Dockerfile .
	docker run --rm hello_world_js

test_php:
	docker build -t hello_world_php -f dockerfiles/php.Dockerfile .
	docker run --rm hello_world_php

test_ruby:
	docker build -t hello_world_ruby -f dockerfiles/ruby.Dockerfile .
	docker run --rm hello_world_ruby

test_bash:
	docker build -t hello_world_bash -f dockerfiles/bash.Dockerfile .
	docker run --rm hello_world_bash

test_python:
	docker build -t hello_world_python -f dockerfiles/python.Dockerfile .
	docker run --rm hello_world_python
