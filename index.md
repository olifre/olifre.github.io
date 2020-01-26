# Welcome

This page is a collection of some of the projects I am working on,
and some collected technical information in form of a knowledgebase.

### Links to technical projects
- [An HTCondor tutorial]({{ site.url }}/gridka-school-2019-htcondor/), made for [GridKa School 2019](https://indico.scc.kit.edu/event/460/overview)
- [Puppet HTCondor](https://github.com/HEP-Puppet/htcondor), a [Puppet](https://puppet.com/) module for the [HTCondor](https://research.cs.wisc.edu/htcondor/) workload management system I am co-maintaining
- [Open-source media player mpv](https://mpv.io/), I am maintaining the [DVB](https://en.wikipedia.org/wiki/Digital_Video_Broadcasting) related parts
- [rootStaticAnalyzer]({{ site.my_github_url }}/rootStaticAnalyzer/), a not-so-static analyzer for [ROOT](https://root.cern.ch) based projects
- [pgToSqlite](https://github.com/BGO-OD/pgToSqlite), a C++ tool to dump a PostgreSQL database into an SQLite3 DB with optional filtering, large object treatment  and handling of special data types
- [ROOT I/O Bench]({{ site.my_github_url }}/root-io-bench), a simple benchmarking tool using [ROOT](https://root.cern.ch) I/O
- [LaTeX Graphics]({{ site.my_github_url }}/latex-graphics), a set of macros and scripts for [LaTeX](https://en.wikipedia.org/wiki/LaTeX) to natively create graphics from [Gnuplot](http://gnuplot.sourceforge.net/), [ROOT](https://root.cern.ch), [Inkscape](https://inkscape.org/) and more directly calling these tools from [LaTeX](https://en.wikipedia.org/wiki/LaTeX)
- [alienfx]({{ site.my_github_url }}/alienfx), an experimental CLI tool to control the RGB LED microcontroller on Dell / Alienware machines
- [dockerhub2oci]({{ site.my_github_url }}/dockerhub2oci), a simple tool to pull data from [dockerhub](https://hub.docker.com/) and create a flat [OCI](https://www.opencontainers.org/)-style container image from that
- [IRC XDCC tutorial]({{ site.url }}/tutorials/ircintro.html), a small tutorial on how to use XDCC with [irssi](https://irssi.org/) on [Gentoo Linux](https://gentoo.org/) (German)

### Knowledgebase
{% for page in site.knowledgebase %}
- [{{ page.title }}: {{ page.subtitle }}]({{ page.url }})
{% endfor %}

### Other projects
- [LifeLines]({{ site.url }}/lifelines/), a personal, somewhat poetic blog
