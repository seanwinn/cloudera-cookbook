# roles/cloudera_server.rb

name "Cloudera Server"
description "Installs the Cloudera Manager server"
run_list "role[base],recipe[cloudera],recipe[cloudera::server]"

