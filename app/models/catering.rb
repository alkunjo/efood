class Catering < ActiveRecord::Base
  # Include default devise modules. Others available are:
  has_many :food_caterings
  has_many :package_caterings
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :logo, styles: { small: "64x64", med: "100x100", large: "200x200", xlarge: "300x300" }
                    #,:url  => "/assets/images/upload/:basename.:extension",
                    #:path => ":rails_root/public/assets/images/upload/:basename.:extension"
  
  # Validate content_type
  validates_attachment_content_type :logo, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :logo, :matches => [/png\Z/, /jpe?g\Z/, /jpg\Z/, /JPG\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :logo
end
