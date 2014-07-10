IFM for CYGWIN
==============

INSTALLING
----------

Download latest release from `https://github.com/mlewissmith/CygIFM/releases`

Run self-extracting tarball


UNINSTALLING
------------

**COPY** the uninstall script into `/tmp`.  Edit the header and remove the `exit 1` line.

    cp /etc/uninstall/ifm-X.X.X-uninstall.sh /tmp
    vi /tmp/ifm-X.X.X-uninstall.sh # edit header
    /tmp/ifm-X.X.X-uninstall.sh


BUILDING FROM SOURCE
--------------------
* Clone this repository
  git clone https://github.com/mlewissmith/CygIFM.git
* Update submodule(s)
  cd CygIFM
  git submodule update
* Run buildscript
  ./build.sh

... creates self-extracting tarball.  Run it.
