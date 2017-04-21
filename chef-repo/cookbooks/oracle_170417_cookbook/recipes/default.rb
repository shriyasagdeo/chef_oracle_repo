#
# Cookbook Name:: oracle_170417_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello recipe I am in oracle")
Chef::Log.debug("Hello recipe I am in oracle for debug")
Chef::Log.info("in am in version 1.0.1")


 # remote_file "#node{['oracle_170417_cookbook']['git_path']['oracle_170417_cookbook']['git_instller']}" do
   # source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
   # action :create
   # not_if { File.exists?("#node{['oracle_170417_cookbook']['git_path']}"'Git-2.5.3-64-bit.exe')}
# end

# execute 'install_git' do
 # not_if{ File.exists?('C:\Program Files\Git')}
  # command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'

# end

#directory "#node{['oracle_170417_cookbook']['directory']}" do

#  recursive true
#  action :create
#end
#cookbook_file "#node{['oracle_170417_cookbook']['directory']}"'index.html' do
#  source 'index.html'

#  action :create
#end
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
