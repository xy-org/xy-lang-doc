---
title: Installation
nav_order: 0
---

# Installation

## Linux

### Prerequisites

* Knowledge of another programming language - preferably C/C++, Python or both.

* A preinstalled c compiler - either gcc or clang.

### Download and Install

The following snippet downloads and installs the latest version of `xyc` in the
directory `~/.xyc/bin`. You can edit the snippet and place it anywhere you like.

```bash
{% include steps/download.sh %}
```

And then to make sure it is installed correctly run:

```bash
{% include steps/check-help.sh %}
```

If you see the help information then you are all set.

### Update

`xyc` is under rapid development and it is recommended to update often. If you
experience a problem it is always a good idea to update first in case the issue has
already been fixed.

Fortunately because xyc is just a simple executable it can be updated fairy easily:

```bash
{% include steps/update.sh %}
```