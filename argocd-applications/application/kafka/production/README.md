# Kafka cluster deployment on Kubernetes

Cụm  Kafka  cluster  sử  dụng  cho  môi  trường  production  được  triển  khai  bằng  [Strimzi](https://strimzi.io/), quản  trị  deployment  bằng  ArgoCD.

Trình tự triển khai:

1. Tạo ArgoCD application để deploy và quản trị Strimzi Operator.
2. 