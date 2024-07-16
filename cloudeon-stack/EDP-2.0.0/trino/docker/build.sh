docker build --build-arg all_proxy="http://my.win:7890" --build-arg http_proxy="http://my.win:7890" --build-arg https_proxy="http://my.win:7890" -f Dockerfile -t registry.cn-guangzhou.aliyuncs.com/bigdata200/trino:424  .
docker push  registry.cn-guangzhou.aliyuncs.com/bigdata200/trino:424
