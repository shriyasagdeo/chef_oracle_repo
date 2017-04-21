current_dir = File.dirname(__FILE__)
log_level          :info
log_location       STDOUT #"/var/log/chef/solo.log"
cache_type         'BasicFile'
file_cache_path    ["#{current_dir}/../cookbooks"]
cookbook_path      ["#{current_dir}/../cookbooks"]
cache_options( :path => "C:/Users/ssagdeo/chef-starter/chef-repo/.chef/.chef/checksums" )
Mixlib::Log::Formatter.show_time = true
