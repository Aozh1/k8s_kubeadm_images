#!/bin/bash
images=(
    kube-apiserver-amd64:
    kube-controller-manager-amd64:
    kube-scheduler-amd64:
    kube-proxy-amd64:=
    pause:3.1
    etcd-amd64:
    coredns:

    pause-amd64:

    kubernetes-dashboard-amd64:
    heapster-amd64:
    heapster-grafana-amd64:
    heapster-influxdb-amd64:
)

for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
done
