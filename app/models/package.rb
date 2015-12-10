class Package < ActiveRecord::Base
	has_many :package_details
end
