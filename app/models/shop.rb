class Shop < ActiveRecord::Base
  has_many :bikes
  has_many :buyers, through: :bikes

  def bike_names
    @bikes = Bike.where(shop_id: id)
    [@bikes[0].name, @bikes[1].name]
  end

end
