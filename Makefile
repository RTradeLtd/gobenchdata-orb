.PHONY: validate
validate:
	circleci orb validate orb.yml
.PHONY: publish-dev-orb
publish-dev-orb:
	circleci orb publish orb.yml rtradeltd/gobenchdata@dev:latest

.PHONY: publish-prod-orb
publish-prod-orb:
	circleci orb publish promote rtradeltd/gobenchdata@dev:latest patch
