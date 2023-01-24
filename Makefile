default: serve
serve:
	bundle exec jekyll serve --livereload --incremental

build:
	bundle exec jekyll
