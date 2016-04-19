class Product < ActiveRecord::Base
  has_attached_file :image, default_url: "./assets/images/product_image.gif",
  					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
