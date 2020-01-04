---
layout: default
title: Gentoo debug setup
subtitle: How to get symbols and sources in place
---

## {{ page.title }}
### {{ page.subtitle }}

In `/etc/portage/env`, create a file `debug.conf` with the contents:
```
CFLAGS="${CFLAGS} -ggdb"
CXXFLAGS="${CXXFLAGS} -ggdb"
FEATURES="${FEATURES} splitdebug installsources"
```
Then, in `/etc/portage/package.env`, you can add a file containing lines like
```
sci-physics/root        debug.conf
```
Furthermore, you have to emerge `dev-util/debugedit`.

[back](../../)

