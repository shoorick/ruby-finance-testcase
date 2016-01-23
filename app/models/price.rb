class Price < ActiveRecord::Base

  attr_accessible :stock, :stock_id, :price, :datetime

  belongs_to :stock

end
