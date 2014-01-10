
define :mysqldump, :action => :enable, :dbhost => 'localhost', :dbname => nil, :overwrite => false do
  include_recipe 'mysql::client'
  
  if params[:action] == :enable
	  unless File.exist?(params[:name]) && params[:overwrite] == false
	    execute "mysqldump -h #{params[:dbhost]} -u #{params[:dbuser]} -p#{params[:dbpassword]} #{params[:dbname]} > #{params[:name]}"
	  end
	end
end