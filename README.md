# test-task
Дано:

log_format mylog       '$remote_addr - $remote_user [$time_local] '
'"$request" $status $body_bytes_sent $request_time '
'"$http_referer" "$http_user_agent" '
'[upstream: $upstream_addr $upstream_status] '
'request_id=$upstream_http_x_request_id';

Нужно сделать:

1 таска - простой скрипт-однострочник на bash, который бы выводил ip, с которого пришло наибольшее количество запросов

2 таска - скрипт на любом языке программирования, который бы вывел top-10 ip, на которые было отдано больше всего трафика ($body_bytes_sent в логе). Сортировать нужно по убыванию трафика.
