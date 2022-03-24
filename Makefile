IMAGE_TAG=brunoalkimim/webapp:$(GO_PIPELINE_LABEL)

push-image:
	id
	docker build -t $(IMAGE_TAG) -f docker/production/Dockerfile .
	docker push $(IMAGE_TAG)
