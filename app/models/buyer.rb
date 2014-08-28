class Buyer < ActiveRecord::Base
  has_many :bikes

  def shops_without_favorite
    @shops = Shop.all
    no_match = []
    @shops.each do |shop|
      shop.bikes.each do |bike|
        unless bike.brand == favorite_brand
          no_match << shop.name unless no_match.include?(shop.name)
        end
      end
    end
    no_match
  end
end
