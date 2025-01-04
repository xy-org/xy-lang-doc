---
title: Hello World
nav_order: 0
---

# Linux

## Prerequisites

A preinstalled c compiler - either gcc or clang is required.

## Download and Install

The following snippet downloads and installs the latest version of `xyc` in the
directory `~/.xyc/bin`. You can edit the snippet and place it anywhere you like.
You can p

```bash
curl "https://github.com/xy-org/pyxyc/releases/download/continuous/xyc-x86_64" --create-dirs -Lo ~/.xyc/bin/xyc
chmod u+x ~/.xyc/bin/xyc
echo "export PATH=\"\$HOME/.xyc/bin:\$PATH\"" >> ~/.bashrc
export PATH="$HOME/.xyc/bin:$PATH"
```

## Update

`xyc` is under rapid development and it is recommended to update often. If you
experience a problem it is always a good idea to update first in case the issue has
already been fixed.

Fortunately because xyc is just a simple executable it can be updated fairy easily:

```bash
curl "https://github.com/xy-org/pyxyc/releases/download/continuous/xyc-x86_64" --create-dirs -Lo ~/.xyc/bin/xyc
```