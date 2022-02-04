## Build the website into the /dist folder
Build: 
	hugo -D -d ./dist
## Clean the /dist folder
Clean:  
	rm -rf ./dist
## Create new post
Post:
	@hugo new "posts/${POST_NAME}.md"
	@sed -i 's/title: ".*"/title: "${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
##prints out the list of targets and their usage.
Help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
%:
