# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "patricklenz"
client_key               "#{current_dir}/patricklenz.pem"
validation_client_name   "kibana-demo-validator"
validation_key           "#{current_dir}/kibana-demo-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/kibana-demo"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]

cookbook_copyright "Topmedia Data Concepts GmbH"
cookbook_email "code@topmedia.de"
