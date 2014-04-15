# roles/cloudera_agent.rb

name "Cloudera Agent"
description "Installs Cloudera agent"
run_list "role[base],recipe[cloudera]"
