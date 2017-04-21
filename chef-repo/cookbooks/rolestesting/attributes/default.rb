#Default attribute in /attributes/default.rb
default['rolestesting']['default_attr']='default_attr'

normal['rolestesting']['normal_attr']='normal_attr'
override['rolestesting']['default_attr']='overide_attr'

force_default['force_default_attr'] = 'force_default_attr I will crush you, role or environment attribute'
force_override['force_override_attr'] = 'force_override_attr I will crush you, role or environment attribute'
