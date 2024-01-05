# QSignPod

A fork for [XZhouQD/unidbg-fetch-qsign](https://github.com/XZhouQD/unidbg-fetch-qsign).

## Deploy

### Docker

```bash
docker run -d --restart=always \
    --name qsign \
    -p {host_port}:8080 \
    -e BASE_PATH=/app/txlib/{version} \
    naturalselect/qsignpod:latest
```

### Podman

```bash
docker run -d --restart=always \
    --name qsign \
    -p {host_port}:8080 \
    -e BASE_PATH=/app/txlib/{version} \
    naturalselect/qsignpod:latest
```

**Using systemd:**

```bash
docker generate systemd --name qsign --new -f

mv container-qsign.service ~/.config/systemd/user/

systemctl --user restart container-qsign

systemctl --user enable container-qsign
```