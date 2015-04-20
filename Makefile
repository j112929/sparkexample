PROJECT = sparkexample
REGISTRY = registry.giantswarm.io
# Insert your company
COMPANY = giantswarm

build:
	docker build -t $(REGISTRY)/$(COMPANY)/$(PROJECT) .

run:
	docker run -p 4567:4567 $(REGISTRY)/$(COMPANY)/$(PROJECT)

push:
	docker push $(REGISTRY)/$(COMPANY)/$(PROJECT)


build-run:
	docker build -f Dockerfile-run -t $(REGISTRY)/$(COMPANY)/$(PROJECT)-run .

run-run:
	docker run -p 4567:4567 $(REGISTRY)/$(COMPANY)/$(PROJECT)-run
