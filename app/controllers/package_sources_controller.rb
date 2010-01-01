class PackageSourcesController < ApplicationController
@@new_db_connection = nil
 active_scaffold :PackageSources do |config|
	 config.columns=[:name, :package, :db_connection]
	 #:package, :connection, :version]
	 config.columns[:package].form_ui = :select
	 config.columns[:db_connection].form_ui = :select
 end
 
def get_connection()
	db_connection_details = DbConnection.find(:first, :conditions=> {:id => params[:id]})

	begin
		new_db_connection = NewSourceConnection.establish_connection(:adapter=> db_connection_details.db_driver.name , 
		:host=> db_connection_details.server, :username=> db_connection_details.user, :password=> db_connection_details.password,
		:database=> db_connection_details.database)
	rescue ex
		raise "Ex: " + ex
	end
end

def get_tables_from_connection()
	new_db_connection = get_connection()
	if new_db_connection.connection.active? then
		@source_tables = new_db_connection.connection.tables
		respond_to do |format|
			format.html { render :partial=> "show_conn_tables"} # show.html.erb
			format.xml  { render :xml => @tst_conn }
		end
	else
		raise "Unable to connect to database server\nAdapter: " + db_connection_details.db_driver.name + 
		"\nHost: " + db_connection_details.server + "\nUsername " + db_connection_details.user  +
		"\nDatabase: " +  db_connection_details.database +
		"\nPassword: " +  db_connection_details.password + 
		"\nNewDBConnection: " + new_db_connection.connected?.to_s
	end
end

def get_fields_from_table
	new_db_connection = get_connection()
	@source_fields = new_db_connection.connection.columns(params["tbl"])
	respond_to do |format|
		format.html {render :partial=>"show_table_fields"}
		format.xml {render :xml => @source_fields}
	end
end

end
class NewSourceConnection < ActiveRecord::Base
end
