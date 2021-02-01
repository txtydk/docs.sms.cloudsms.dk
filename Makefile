.PHONY: all

all: clean dep patch build
deploy: all deploy

clean:
	rm -rf ./build/

dep:
	npm install widdershins
	bundle config set --local path 'vendor/bundle'
	bundle install

patch:
	patch ./node_modules/widdershins/lib/openapi3.js 0001-Add-basicAuth-auth-header-to-all-headers.-Fixes-353-.patch

build:
	./node_modules/widdershins/widdershins.js --user_templates ./templates/openapi3/ --search false --httpsnippet --language_tabs 'shell:cURL' 'php:PHP:cURL' 'python:Python:requests' 'go:Go' 'javascript:JavaScript' 'csharp:C#' 'ruby:Ruby' --summary api.yaml -o source/index.html.md
	bundle exec middleman build

run:
	./node_modules/widdershins/widdershins.js --user_templates ./templates/openapi3/ --search false --httpsnippet --language_tabs 'shell:cURL' 'php:PHP:cURL' 'python:Python:requests' 'go:Go' 'javascript:JavaScript' 'csharp:C#' 'ruby:Ruby' --summary api.yaml -o source/index.html.md
	bundle exec middleman server

deploy:
	./deploy.sh