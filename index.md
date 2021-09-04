## Welcome

My name is Oliver Freyermuth. 

- [My ORCID](https://orcid.org/0000-0001-8053-6283){:target="_blank"}
- [My INSPIRE-HEP profile](https://inspirehep.net/literature?q=a%20O.Freyermuth.2){:target="_blank"}
- [Keybase identity](https://keybase.io/olifre){:target="_blank"}
- [My Publications](publications)

This page is a collection of some of the projects I work on, and some collected technical information in form of a knowledgebase. 

### Links to technical projects
- [An HTCondor tutorial]({{ site.url }}/gridka-school-2019-htcondor/), made for [GridKa School 2019](https://indico.scc.kit.edu/event/460/overview)
- [An updated HTCondor tutorial with Uni Bonn specifics](https://unibonn.github.io/htcondor-bonn/)
- [Puppet HTCondor](https://github.com/HEP-Puppet/htcondor), a [Puppet](https://puppet.com/) module for the [HTCondor](https://research.cs.wisc.edu/htcondor/) workload management system I am co-maintaining
- [Open-source media player mpv](https://mpv.io/), I am maintaining the [DVB](https://en.wikipedia.org/wiki/Digital_Video_Broadcasting) related parts
- [My personal Gentoo portage overlay](https://github.com/olifre/olifre-portage) Contains some random, mostly scientific, packages, use at your own risk
- [Packages in Gentoo portage tree](https://repology.org/projects/?maintainer=o.freyermuth%40googlemail.com&inrepo=gentoo) I'm proxy-maintaining some, mostly scientific packages in Gentoo's official portage tree
- [Packages in Gentoo's GURU overlay](https://repology.org/projects/?maintainer=o.freyermuth%40googlemail.com&inrepo=gentoo_ovl_guru) I'm maintaining and / or co-maintaining various packages in Gentoo's [GURU overlay](https://wiki.gentoo.org/wiki/Project:GURU)
- [Packages in Gentoo's Science overlay](https://repology.org/projects/?maintainer=o.freyermuth%40googlemail.com&inrepo=gentoo_ovl_science) I'm maintaining and / or co-maintaining various packages in Gentoo's [Science overlay](https://wiki.gentoo.org/wiki/Project:Science)
- [rootStaticAnalyzer]({{ site.my_github_url }}/rootStaticAnalyzer/), a not-so-static analyzer for [ROOT](https://root.cern.ch) based projects
- [pgToSqlite](https://github.com/BGO-OD/pgToSqlite), a C++ tool to dump a PostgreSQL database into an SQLite3 DB with optional filtering, large object treatment and handling of special data types. Makes use of the [OptionParser](https://github.com/BGO-OD/OptionParser/) library.
- [ROOT I/O Bench]({{ site.my_github_url }}/root-io-bench), a simple benchmarking tool using [ROOT](https://root.cern.ch) I/O
- [LaTeX Graphics]({{ site.my_github_url }}/latex-graphics), a set of macros and scripts for [LaTeX](https://en.wikipedia.org/wiki/LaTeX) to natively create graphics from [Gnuplot](http://gnuplot.sourceforge.net/), [ROOT](https://root.cern.ch), [Inkscape](https://inkscape.org/) and more directly calling these tools from [LaTeX](https://en.wikipedia.org/wiki/LaTeX)
- [alienfx]({{ site.my_github_url }}/alienfx), an experimental CLI tool to control the RGB LED microcontroller on Dell / Alienware machines
- [dockerhub2oci]({{ site.my_github_url }}/dockerhub2oci), a simple tool to pull data from [dockerhub](https://hub.docker.com/) and create a flat [OCI](https://www.opencontainers.org/)-style container image from that
- [IRC XDCC tutorial]({{ site.url }}/tutorials/ircintro.html), a small tutorial on how to use XDCC with [irssi](https://irssi.org/) on [Gentoo Linux](https://gentoo.org/) (German)
- [UserCSS for browsers]({{ site.my_github_url }}/userstyles), collected user CSS styles for usage e.g. with [Stylus](https://add0n.com/stylus.html)
- [UserScripts for browsers]({{ site.my_github_url }}/userscripts), collected user JS scripts for usage e.g. with [Greasemonkey](https://wiki.greasespot.net/Greasemonkey)
- [dnstwist-tester]({{ site.my_github_url }}/dnstwist-tester), a GitHub actions workflow scanning a few domains with [dnstwist](https://github.com/elceef/dnstwist) at least daily and presenting the [results]({{ site.url }}/dnstwist-tester/)

### Knowledgebase
{% for page in site.knowledgebase %}
- [{{ page.title }}: {{ page.subtitle }}]({{ page.url }})
{% endfor %}

### Other projects
- [LifeLines]({{ site.url }}/lifelines/), a personal, somewhat poetic blog
- [My Books]({{ site.url }}/mybooks/), a collection of personal and original other writing projects
