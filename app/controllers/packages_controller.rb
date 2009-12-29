class PackagesController < ApplicationController
 active_scaffold :Packages do |config|
	 config.columns = [:name, :desc, :version, :package_sources]
	 
  end
end
