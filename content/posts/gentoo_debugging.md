+++
date = '2020-01-04T19:21:00+01:00'
draft = false
type = 'post'
title = 'Gentoo debug setup'
description = 'How to get symbols and sources in place'
tags = ["gentoo"]
showTableOfContents = true
+++
In `/etc/portage/env`, create a file `debug.conf` with the contents:
```bash
CFLAGS="${CFLAGS} -ggdb"
CXXFLAGS="${CXXFLAGS} -ggdb"
FEATURES="${FEATURES} splitdebug installsources"
```
Then, in `/etc/portage/package.env`, you can add a file containing lines like
```
sci-physics/root        debug.conf
```
Furthermore, you have to emerge `dev-util/debugedit`.
