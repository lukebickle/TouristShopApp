class Product < ActiveRecord::Base
  attr_accessible :brand_id, :name, :price
end
