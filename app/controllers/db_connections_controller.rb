class DbConnectionsController < ApplicationController
 active_scaffold :DbConnections do |config|
	config.columns = [:name,:server, :database, :db_driver, :user, :password, :environment]
	config.columns[:db_driver].form_ui = :select
end	 
end
