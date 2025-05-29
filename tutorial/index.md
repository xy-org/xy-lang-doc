---
title: Installation
nav_order: 0
---

# Installation

## Linux and MacOS

### Prerequisites

* Knowledge of another programming language - preferably C/C++, Python or similar.

* A preinstalled c compiler - either gcc or clang.

### Download and Install

The following snippet downloads and installs the latest version of `xyc` in
directory `~/.xyc`. You can edit the snippet and place it wherever you like.

```bash
{% include steps/download.sh %}
```

And then to make sure it is installed correctly run:

```bash
{% include steps/check-help.sh %}
```

If you see the help information then you are all set. MacOS users may need
to [explicitly allow the application](https://support.apple.com/en-us/102445)
to run by going to `System Settings -> Privacy & Security`
scrolling down to the `Security` section and clicking the `Open Anyway` button.

### Updating xyc

`xyc` is under rapid development and it is recommended to update often. If you
experience a problem it is always a good idea to update first in case the issue has
already been fixed.

Because xyc is relatively simple and small updating it is as easy as:

```bash
{% include steps/update.sh %}
```