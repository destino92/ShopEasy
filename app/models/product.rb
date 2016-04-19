class Product < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x" }, default_url: "./assets/images/product_image.gif"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
