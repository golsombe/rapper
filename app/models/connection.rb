class Connection < ActiveRecord::Base
belongs_to :db_driver
has_many :package_mappings
has_many :package_sources
end
