# 说明
  基于 filebeat 自定义 nginx 日志收集镜像
# 注意
- 需要在 nginx 日志格式后面增加2个字段用来统计请求处理时间 `%{NUMBER:nginx.request_time:float} (-|%{NUMBER:http.upstream.response_time:float})`
