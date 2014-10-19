java
====

This state installs java to from a premade make-jpkg deb.

To make the deb:

Download the jre from oracle:

    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jre-7u71-linux-x64.tar.gz

.. code-block:: bash
    
    sudo apt-get install java-package
    
    make-jpkg jre-7u71-linux-x64.tar.gz
    
    Answer the questions.
    
    cp oracle-j2sdk......deb /srv/salt/server_jre.deb


Available states
================

.. contents::
    :local:

``java.server_jre``
-------------------

Install the Oracle Java server jre, the deb make from make-jpg must be in the files directory.


Example Pillar
==============

You can specify the ``source``, in your `pillar` file, like so:

.. code-block:: yaml

    java:
      jre:
        source: salt://server_jre.deb
