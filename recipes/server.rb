#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
#

package 'httpd'

#file '/var/www/html/index.html' do
#  content "<h1>Hello world, this is chef training.</h1>
#<h3>ipaddress: #{node['ipaddress']}</h3>
#<h3>hostname: #{node['hostname']}</h3>"
#end

template '/var/www/html/index' do
  source 'index.html.erb'
end

service 'httpd' do 
  action [ :start, :enable ]
end


























