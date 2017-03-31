dev:
	hugo -t introduction --watch serve

build:
	hugo && cd ../poo.github.io && find . | grep -v "\/\.git" | grep -v "CNAME" | grep -v "\.\$$" | xargs rm -rf && cd ../poo-site && mv public/* ../poo.github.io/.

deploy: build
	cd ../poo.github.io && git add . && git commit -m "deploy: $(m)" && git push



