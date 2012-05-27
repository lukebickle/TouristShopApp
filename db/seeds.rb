if Rails.env.development?
  
  User.destroy_all
  Brand.destroy_all
  Product.destroy_all

  [ ["Roxy", "r.png"], ["Outback", "ob.png"]].each do |brand_info|
     Brand.create name: brand_info.first, logo: brand_info.last
   end
   
     r = Brand.find_by_name('Roxy')
     r.products.create name: "Hoodie", price: 50
     r.products.create name: "T-Shirt", price: 20
     r.products.create name: "Water Bottle", price: 30

     ob = Brand.find_by_name('Outback')
     ob.products.create name: "tank top", price: 39
     ob.products.create name: "board shorts", price: 60
     ob.products.create name: "surf board", price: 399

     User.create login: "luke", password: "dude"


   end








# 
# Product.create(:name => "hat", :price => 20, :brand_id => 1)
# Product.create(:name => "tank top", :price => 50, :brand_id => 2)
# Product.create(:name => "shorts", :price => 60, :brand_id => 2)  
# 
# 
# 
# Brand.create(:name => "roxy", :logo => "South Pacific.png ")
# Brand.create(:name => "outback", :logo => "Vanuatu_Namba_One.png" )

