# k8s_kubeadm_images

A k8s images from aliyuncs.  

从阿里云镜像拉取 k8s 镜像 的 shell ，省却手动多次输入 docker pull 的麻烦。
解决初学者使用kubeadm学习k8s时无法从谷歌官方镜像下载导致弃坑的问题

# How to use 
Upload file to your linux 

```
cd dir
chmod +x ./k8spull.sh 
./k8spull.sh

```

or copy k8spull.sh's code 

```
vim xxxx.sh
```
paste code

```
chmod +x ./xxx.sh 
./xxxx.sh

```

Now you can use `kubeadm init` to create k8s.
