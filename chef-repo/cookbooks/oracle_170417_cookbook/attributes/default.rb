default['oracle_170417_cookbook']['git_instller'] = 'Git-2.12.2.2-64-bit.exe'

default['oracle_170417_cookbook']['git_path'] = 'C:/chef/'
default['oracle_170417_cookbook']['mode'] = '0755'

if node["platform"]=="windows"
default['oracle_170417_cookbook']['directory']='C:/tmp3/tmp2/tmp1'
default['oracle_170417_cookbook']['path']='C:/tmp3/tmp2/tmp1'
default['oracle_170417_cookbook']['owner']='Administrators'
default['oracle_170417_cookbook']['group']='Administrators'

else
  default['oracle_170417_cookbook']['directory']='C:/tmp3/tmp2/tmp1'
  default['oracle_170417_cookbook']['path']='C:/tmp3/tmp2/tmp1'
  default['oracle_170417_cookbook']['owner']='root'
  default['oracle_170417_cookbook']['group']='root'

end

default['oracle_170417_cookbook']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['oracle_170417_cookbook']['sudo']['users']  = [ 'jerry', 'greg']
