class PackageDetail < ActiveRecord::Base
  belongs_to :package
  belongs_to :foods
end
