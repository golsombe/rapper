class PackageMapping < ActiveRecord::Base
belongs_to :package_source
belongs_to :connection
end

