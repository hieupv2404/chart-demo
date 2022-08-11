FROM flink:1.12.1-scala_2.11-java11

COPY config /.kube/config
ENV KUBECONFIG=/.kube/config

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl