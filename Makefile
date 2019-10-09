HUGO_VERSION := 0.58.3
ifeq ($(shell uname),Darwin)
	OS := macOS
else
	OS := Linux
endif

.PHONY: clean
clean:
	rm -fr public

.PHONY: clobber
clobber: clean
	rm -fr hugo

.PHONY: guard-%
guard-%:
	@ if [ "${${*}}" = "" ]; then \
	    echo "Environment variable $* not set"; \
	    exit 1; \
	fi

hugo:
	curl -LsS https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_$(HUGO_VERSION)_$(OS)-64bit.tar.gz | tar xzf - hugo

develop: hugo ## Start a development server
	./hugo serve -D

.PHONY: build
build: public

public: hugo ## Build the website
	./hugo -b https://go-serverless-workshop.com/

install: hugo ## Install dependencies (hugo)
