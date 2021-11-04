docker run --rm -d -p 8080:5678 hashicorp/http-echo -text="Container 1"
docker run --rm -d -p 8081:5678 hashicorp/http-echo -text="Container 2"
docker run --rm -d -p 8082:5678 hashicorp/http-echo -text="Container 3"
docker run --rm -d -p 8083:5678 hashicorp/http-echo -text="Container 4"

echo "I'm about to stop all your local containers, CTRL+X and stop them yourself otherwise"
pause
docker container stop $(docker container list -q)
exit(0)
