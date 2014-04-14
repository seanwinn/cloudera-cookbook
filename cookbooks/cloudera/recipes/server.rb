#
# Cookbook Name:: cloudera
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "cloudera-manager-server-db-2" do
  action :install
end

package "cloudera-manager-server" do
  action :install
end

service "cloudera-scm-server-db" do
  supports :restart => true, :reload => true
  action [ :enable, :start ]
end

service "cloudera-scm-server" do
  supports :restart => true, :reload => true
  action [ :enable, :start ]
end


