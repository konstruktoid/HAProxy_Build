# HAProxy

```sh
docker run -d --cap-drop=all --cap-add={sys_chroot,setgid,setuid} -p 0.0.0.0:8080:8080 -v /etc/haproxy/haproxy.cfg:/etc/haproxy/haproxy.cfg:ro konstruktoid/haproxy
```
