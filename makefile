run-demo:
	docker run --rm -d -p 8080:5678 hashicorp/http-echo -text="Container 1"
	docker run --rm -d -p 8081:5678 hashicorp/http-echo -text="Container 2"
	docker run --rm -d -p 8082:5678 hashicorp/http-echo -text="Container 3"
	docker run --rm -d -p 8083:5678 hashicorp/http-echo -text="Container 4"

	docker build -t envoy-test:latest .
	docker run --rm -d -p 8000:1234 --name envoy envoy-test:latest