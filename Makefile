build:
	docker build -t 22004159g/myapp .

login:
	docker login -u 22004159g

push: login build
	docker push 22004159g/myapp

run: build
	docker run -p 5000:5000 22004159g/myapp