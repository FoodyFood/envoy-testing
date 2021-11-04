# Envoy

## What it does

Connects services/pods running in a cluster in a secure manner

It can encrypt the traffic between two microservices and control the connections between them
<br>

## What I did here

Here I have connected 4 containers with a round_robbin policy, so show it's load balancing capability, and to have a template of an envoy config yaml
<br>

## I want to see it now
```bash
make run-demo
```
<br>

## Run the containers it will connect

```bash
./start_destination_containers.ps1
```
<br>

## Build the envoy image and run it

```bash
docker build -t envoy-test:latest .
docker run --rm --name envoy -p 8000:1234 envoy-test:latest
```
<br>

## Seeing the result

Ok now go to http://localhost:8000 and refresh the page a bunch of times, you should see it hit different containers