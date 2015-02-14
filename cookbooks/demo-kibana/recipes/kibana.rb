#
# Cookbook Name:: demo-kibana
# Recipe:: kibana
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

ark "kibana" do
  version node.kibana['version']
  url "https://download.elasticsearch.org/kibana/kibana/kibana-#{node.kibana['version']}-linux-x64.tar.gz"
  action :install
  checksum node.kibana['checksum']
end

template "/etc/init/kibana.conf" do
  source "kibana.conf.erb"
end

service "kibana" do
  action :start
end
