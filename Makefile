IMAGE_TAG=brunoalkimim/webapp:$(GO_PIPELINE_LABEL)

push-image:
	docker build -t $(IMAGE_TAG) -f docker/production/Dockerfile .
	docker push $(IMAGE_TAG)
