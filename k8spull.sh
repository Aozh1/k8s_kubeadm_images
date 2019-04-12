#!/bin/bash
images=(
    kube-apiserver-amd64:v1.14.1
    kube-controller-manager-amd64:v1.14.1
    kube-scheduler-amd64:v1.14.1
    kube-proxy-amd64:v1.14.1
    pause:3.1
    etcd-amd64:3.3.10
    coredns:1.3.1

    pause-amd64:3.1

    kubernetes-dashboard-amd64:v1.10.0
    heapster-amd64:v1.5.4
    heapster-grafana-amd64:v5.0.4
    heapster-influxdb-amd64:v1.5.2
)

for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
done
