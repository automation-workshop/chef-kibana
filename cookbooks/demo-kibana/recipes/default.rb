#
# Cookbook Name:: demo-kibana
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'elasticsearch::default'

service "elasticsearch" do
  action :start
end

include_recipe 'demo-kibana::kibana'
