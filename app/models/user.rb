class User < ActiveRecord::Base
  attr_accessible :login, :password
  
  has_many 
  # has_secure_password
end
