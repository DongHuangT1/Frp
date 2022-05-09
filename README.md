# Frp

*本项目仅限于安全研究和教学，严禁用于非法用途！*

## Change

1. 删除 Admin UI 模块
2. `-c` 参数支持HTTP远程加载
3. 添加 `del_enable` 自删除文件
4. 添加 `websocket_host` 域前置
5. 添加 `dingding_token` 钉钉通知
6. 添加 `websocket_path` 默认: `/~!frp`
7. `tls_enable` 和 `disable_custom_tls_first_byte` 默认启用

## Example

```ini
#frps.ini
[common]
token = 996748
bind_port = 8080
websocket_path = /sync
dingding_token = *****

#frpc.ini
[common]
token = 996748
del_enable = true
server_addr = cdn.com
server_port = 8080
protocol = websocket
websocket_path = /sync
websocket_host = my.com

[socks5]
type = tcp
remote_port = 9999
plugin = socks5
plugin_user = admin
plugin_passwd = 123456
use_compression = true
```

## Reference

- https://github.com/fatedier/frp
