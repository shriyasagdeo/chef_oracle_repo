template 'C:/chef/tp2' do
  source 'tp2.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    tp2_user_mems: node['cb2']['sudo']['mems'],
    tp2_users: node['cb2']['sudo']['user_mems'],
    passwordless: true
  })
end
