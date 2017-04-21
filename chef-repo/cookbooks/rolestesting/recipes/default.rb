#
# Cookbook Name:: rolestesting
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Default attribute in node object in recipe

#node.default['rolestesting']['default_attr']='default_attr_recipe'
#node.normal['rolestesting']['normal_attr']='normal_attr_recipe'
#node.override['rolestesting']['default_attr']='overide_attr_recipe'

#node.force_default['force_default_attr'] = 'force_default_attr I will crush you, role or environment attribute_recipe'
#node.force_override['force_override_attr'] = 'force_override_attr I will crush you, role or environment attribute_recipe'
#Chef::Log.info "I am a new recipe"
#Chef::Log.debug "I am a new recipe"
##Chef::Log.info(node['rolestesting']['normal_attr'])
#Chef::Log.info(node['rolestesting']['default_attr'])
#Chef::Log.info(node['rolestesting']['normal_attr'])
#Chef::Log.info(node['rolestesting']['default_attr'])
#Chef::Log.info(node['force_default_attr'])
#Chef::Log.info(node['force_override_attr'])

#Chef::Log.info('i have version 1.4')

objectItem = data_bag_item("user","rolestesting")

Chef::Log.info("The Access Key is #{objectItem['monitor_config']['secretKey']}")


#admins = data_bag('user')
#admins.each do |login|
  #admin = data_bag_item('user', login)
#  if node.name == admin.id
#   Chef::Log.info("I am in #{node.name}")
#  end
#end



chef_data_bag_item 'user' do
  attribute node.name
  Chef::Log.info("deleting #{node.name}")
  action :delete # see actions section below
end
