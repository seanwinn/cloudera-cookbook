hostsfile_entry "#{node['cloudera']['server_ip']}" do
  hostname  'cm'
  unique    true
end


