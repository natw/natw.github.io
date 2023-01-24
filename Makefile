default: serve
serve:
	bundle exec jekyll serve --livereload

build:
	bundle exec jekyll

# title_stub ?= $(shell echo $(raw_title) | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
raw_title ?= $(shell bash -c 'read -p "Post title: " title; echo $$title')
post_date ?= $(shell date +"%Y-%m-%d")

post:
	raw="$(raw_title)";\
	$(EDITOR) "_posts/$(post_date)-$$(echo "$$raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-').md" -c ':read _post_template.md' -c ":%s/TITLE/$$raw/"
