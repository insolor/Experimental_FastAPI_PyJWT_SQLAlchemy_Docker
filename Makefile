build:
	poetry build
	docker image build . -t insolor/inside_test_project

hub:
	docker push insolor/inside_test_project

run:
	docker container run -e DATABASE_URL='sqlite:///:memory:' -p 10000:10000 -t insolor/inside_test_project:latest
