class Product < ActiveRecord::Base
  attr_accessible :brand_id, :name, :price
  
  belongs_to :brand
  
  has_many :reviews
end
