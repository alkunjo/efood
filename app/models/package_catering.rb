class PackageCatering < ActiveRecord::Base
  belongs_to :package
  belongs_to :catering
end
