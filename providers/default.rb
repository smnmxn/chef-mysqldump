
def whyrun_supported?
  true
end

use_inline_resources if defined?(use_inline_resources)

action :run do
	  unless ::File.exist?(new_resource.name) && new_resource.overwrite == false
	    execute "mysqldump -h #{new_resource.dbhost} -u #{new_resource.dbuser} -p#{new_resource.dbpassword} #{new_resource.dbname} > #{new_resource.name}"
	    new_resource.updated_by_last_action(true)
	  end
end
