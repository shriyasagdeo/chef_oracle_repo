template 'C:/chef/tp1' do
  source 'tp1.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    tp1_sudoers_groups: node['cb1']['sudo']['groups'],
    tp1_sudoers_users: node['cb1']['sudo']['users'],
    passwordless: true
  })
end
