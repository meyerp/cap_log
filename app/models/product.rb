class Product < ActiveRecord::Base
  belongs_to :user

  has_attached_file :product_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :product_picture, :content_type => /\Aimage\/.*\Z/

end
