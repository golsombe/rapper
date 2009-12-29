class PackageSource < ActiveRecord::Base
belongs_to :package
belongs_to :db_connection
#has_many :package_mappings
end
