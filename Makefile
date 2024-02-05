build:
	docker build -t local-flask .

run: build
	docker run -p 5000:5000 local-flask 