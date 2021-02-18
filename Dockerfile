
# docker build -t  mailbyms/filebeat-nginx:7.10.2 .

# 需要在 nginx 日志格式后面增加2个字段用来统计请求处理时间 %{NUMBER:nginx.request_time:float} (-|%{NUMBER:http.upstream.response_time:float})

# base image
FROM elastic/filebeat:7.10.2

#MAINTAINER
MAINTAINER MIKE

ENV TZ=Asia/Shanghai

RUN /usr/share/filebeat/filebeat modules enable nginx
COPY pipeline.yml /usr/share/filebeat/module/nginx/access/ingest/pipeline.yml
