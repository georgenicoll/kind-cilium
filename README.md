# Kind cluster with Cillium

The steps required to create a kind cluster running cilium + hubble.

For full instructions see the [Cillium Quick Installation](https://docs.cilium.io/en/stable/gettingstarted/k8s-install-default/#k8s-install-quick),
and specifically, the `kind` tab for setting up the cluster and the `generic` tab for installing cillium.

## Pre-requisites

If installing a lot of docker processes, it may be necessary to increase inotify user limits...

In `/etc/sysctl.conf`:

```bash
fs.inotify.max_user_watches = 524288
fs.inotify.max_user_instances = 512
```

and:

```bash
reboot now
```

## Scripts

Just run:

```bash
XX.create-cilium-cluster.sh
```

or follow the numbers:

```bash
./01.get-cluster-config.sh
./02.create-cluster.sh
./03.install-cilium-cli.sh
./04.install-cilium.sh
```

## Get rid

```bash
XX.delete-cluster.sh
```

This leaves cilium cli but ho, hum.
