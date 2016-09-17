image: Gemfile.lock Dockerfile
	docker build "$(CURDIR)"

Gemfile.lock: Gemfile
	docker run --rm -v "$(CURDIR)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
	docker run --rm -v "$(CURDIR)":/usr/src/app -w /usr/src/app ruby:2.1 touch -c Gemfile.lock
