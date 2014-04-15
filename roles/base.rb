# roles/base.rb

name "Base"
description "Base Server Role"
run_list "recipe[apt],recipe[apt::cacher-client],recipe[hostsfile],recipe[java]"
