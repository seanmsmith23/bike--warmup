class Bike < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :shop

  def favorited_by
    p brand
    @user = Buyer.where(favorite_brand: brand)
    "#{@user.first.first_name} #{@user.first.last_name}"
  end
end
