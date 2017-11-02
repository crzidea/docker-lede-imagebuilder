# LEDE Image Builder

## Usage

Build image:

```sh
make clean && \
make image PROFILE=tl-wr720n-v4 PACKAGES=" \
    block-mount kmod-usb-storage kmod-fs-ext4 \
    -ppp -ppp-mod-pppoe -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables \
    -wpad-mini wpad \
    "
```

After flash image, login the router, mount USB drive, install luci:

```
opkg install uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-mod-admin-full luci-theme-bootstrap
```
