
def whyrun_supported?
  true
end

use_inline_resources if defined?(use_inline_resources)

action :run do
	  unless File.exist?(params[:name]) && params[:overwrite] == false
	    execute "mysqldump -h #{params[:dbhost]} -u #{params[:dbuser]} -p#{params[:dbpassword]} #{params[:dbname]} > #{params[:name]}"
	    new_resource.updated_by_last_action(true)
	  end
end