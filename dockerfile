FROM envoyproxy/envoy-dev:1aa90808abe2531dd50bebdac0408da6f9f53da4
COPY envoy.yaml /etc/envoy/envoy.yaml
RUN chmod go+r /etc/envoy/envoy.yaml