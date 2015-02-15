# shell-kibana

Vagrant setup for a VM with Kibana 4 and Elasticsearch installed with [Chef](http://chef.io)-based provisioning in conjunction with a Hosted Chef server.

Setup
-----

The `.chef/knife.rb` in this repo is setup for a demo account on [Hosted Chef](https://manage.chef.io). However, we don't ship the certificates required for authentication for obvious reasons. If you want to re-use this setup, sign up for your own Chef account and get their "Starter Kit", containing both a valid `knife.rb` and the proper certificates.

Spin-up
-------

~~~
$ vagrant up
~~~

This will download and bootstrap an Ubuntu 14.04 VM and install the necessary software packages on the individual VMs using Chef cookbooks.

Exposed ports
-------------

This setup currently exposes `:9200` and `:9300` for Elasticsearch data
ingestion and `:5601` for the Kibana dashboard on `192.168.50.5`.

Shared folders
--------------

Elasticsearch data is stored outside of the VM in `esdata/`.
