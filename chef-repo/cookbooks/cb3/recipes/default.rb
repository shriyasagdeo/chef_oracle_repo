#
# Cookbook Name:: cb3
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template 'C:/chef/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['oracle_170417_cookbook']['sudo']['groups'],
    sudoers_users: node['oracle_170417_cookbook']['sudo']['users'],
    passwordless: true
  })
end
