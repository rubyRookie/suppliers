class Supplier < ActiveRecord::Base
  attr_accessible :city, :company, :fax, :gmaps, :latitude, :longitude, :mail, :phone, :postcode, :street, :category_ids
  
#validation
  validates :company,  :presence => true
  validates :street,  :presence => true
  validates :postcode,  :presence => true,
                        :length => { :minimum => 5 }
  validates :city,  :presence => true

#n:n relation
  has_and_belongs_to_many :categories

#Using gmaps4rails
  acts_as_gmappable

  def gmaps4rails_address
    "#{street}, #{postcode}, #{city}"  #retrieve the address from the model
  end

#Infowindow
  def gmaps4rails_infowindow
    "<b>#{company}</b><br />#{street}<br />#{postcode} #{city}<br />phone #{phone}"
  end

#Marker picture in folder C:\Sites\public\images
  def gmaps4rails_marker_picture
  {
    "picture" => "/images/marker.png",
    "width" => 24,
    "height" => 24,
    "marker_anchor" => [24,24]
  }
  end

#List of suppliers
  def gmaps4rails_sidebar
    "#{company}"
  end
end
