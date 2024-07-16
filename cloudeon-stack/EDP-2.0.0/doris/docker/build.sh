# 根据机器是否支持avx2指令集决定要使用的镜像，不支持则镜像tag后面携带 noavx2
cat /proc/cpuinfo | grep avx2

# dockerfile默认使用的是noavx2，
docker build -f Dockerfile -t registry.cn-guangzhou.aliyuncs.com/bigdata200/doris:2.1.2-noavx2  .
docker push  registry.cn-guangzhou.aliyuncs.com/bigdata200/doris:2.1.2-noavx2

# 如果要使用avx2或使用不同版本，在这里指定下载链接
docker build --build-arg DORIS_DOWNLOAD_URL='https://apache-doris-releases.oss-accelerate.aliyuncs.com/apache-doris-2.1.2-bin-x64.tar.gz' -f Dockerfile -t registry.cn-guangzhou.aliyuncs.com/bigdata200/doris:2.1.2  .
docker push  registry.cn-guangzhou.aliyuncs.com/bigdata200/doris:2.1.2
