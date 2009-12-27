class Package < ActiveRecord::Base
belongs_to :user
has_many :package_sources
end
