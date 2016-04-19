class Product < ActiveRecord::Base
  if Rails.env.development?
  	has_attached_file :image, styles: { :medium => "200x"}, default_url: "./assets/images/product_image.gif"
  else
  	has_attached_file :image, styles: { :medium => "200x"}, default_url: "./assets/images/product_image.gif",
  					  :storage => :dropbox,
    				  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				  :path => ":style/:id_:filename"
  end
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
