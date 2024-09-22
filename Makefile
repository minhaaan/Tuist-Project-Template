graph:
	tuist graph -t

graph-all:
	tuist graph

scaffold-feature-%:
	tuist scaffold feature --name $*
scaffold-framework-%:
	tuist scaffold framework --name $*	
	
.PHONY: graph scaffold