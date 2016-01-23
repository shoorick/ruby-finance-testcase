class Price < ActiveRecord::Base

  attr_accessible :stock, :stock_id

  belongs_to :stock

end
