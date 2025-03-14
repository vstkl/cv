JEKYLL_VERSION=3.8
build:
	docker run --rm  -p4000:4000  --volume="${PWD}:/srv/jekyll"   -it jekyll/jekyll:${JEKYLL_VERSION}   jekyll build
serve:
	docker run --rm  -p4000:4000  --volume="${PWD}:/srv/jekyll"   -it jekyll/jekyll:${JEKYLL_VERSION}   jekyll serve
cp:
	docker run --rm  -p4010:4000  --volume="jekyll-cv:/srv/jekyll" --volume="${PWD}:/srv/old"   -it jekyll/jekyll:${JEKYLL_VERSION}  sh 
