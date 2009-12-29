class DbDriversController < ApplicationController
 active_scaffold :DbDrivers do |config|
	config.columns = [:name,:desc,:require_exp,:version]
	config.columns[:require_exp].label = 'Driver Name'
  end
end
