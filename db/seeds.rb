# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





Product.create(:name => "hat", :price => 20, :brand_id => 1)
Product.create(:name => "tanktop", :price => 50, :brand_id => 2)
Product.create(:name => "shorts", :price => 60, :brand_id => 3)  

Brand.create(:name => "roxy", :logo => "South Pacific.pmg ")
Brand.create(:name => "outback", :logo => "Vanuatu_Namba_One.pmg" )

