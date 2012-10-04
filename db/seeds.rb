# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
Supplier.create("city"=>"Växjö", "company"=>"Standout AB", "fax"=>"", "gmaps"=>true, "latitude"=>56.8783904, "longitude"=>14.8039077, "mail"=>"kontakt@standout.se", "phone"=>"0470 - 34 87 00", "postcode"=>"352 30", "street"=>"Västergatan 6")
Supplier.create("city"=>"Hovmantorp", "company"=>"Sockerbiten", "fax"=>"", "gmaps"=>true, "latitude"=>56.7805288, "longitude"=>15.1429644, "mail"=>"", "phone"=>"0478 - 412 20", "postcode"=>"360 51", "street"=>"Sandgärdsgatan 9")
Supplier.create("city"=>"Lessebo", "company"=>"Lessebo kommun", "fax"=>"0478 - 310 95", "gmaps"=>true, "latitude"=>56.7513868, "longitude"=>15.2694213, "mail"=>"info@lessebo.se", "phone"=>"0478 - 125 00", "postcode"=>"360 50", "street"=>"Storgatan 78")
Supplier.create("city"=>"Växjö", "company"=>"JKS Golv I Växjö AB", "fax"=>"", "gmaps"=>true, "latitude"=>56.8876773, "longitude"=>14.7753416, "mail"=>"", "phone"=>"0470 - 229 80", "postcode"=>"352 46", "street"=>"Mörners väg 112")
Supplier.create("city"=>"Hovmantorp", "company"=>"Bergdala Glasbruk", "fax"=>"", "gmaps"=>true, "latitude"=>56.8252513, "longitude"=>15.2308205, "mail"=>"info@studioglas.se", "phone"=>"0478 - 316 50", "postcode"=>"360 51", "street"=>"Bergdala")

Category.create([{ "name" => "bread" }, { "name" => "fruits" }, { "name" => "meat" }, { "name" => "milk" }, { "name" => "vegetables" }])
