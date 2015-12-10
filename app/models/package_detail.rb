class PackageDetail < ActiveRecord::Base
  belongs_to :packages
  belongs_to :foods
end
