class Food < ActiveRecord::Base
  belongs_to :food_type
  has_many :package_details
  has_many :packages, :through => :package_details
  validates :name, :description, presence: true

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
                    #,:url  => "/assets/images/upload/:basename.:extension",
                    #:path => ":rails_root/public/assets/images/upload/:basename.:extension"
  
  # Validate content_type
  validates_attachment_content_type :image, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /jpg\Z/, /JPG\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :image
end
