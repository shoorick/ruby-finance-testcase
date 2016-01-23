class Price < ActiveRecord::Base

  attr_accessible :stock, :stock_id, :price, :datetime

  validates :price, numericality: { greater_than: 0 }

  belongs_to :stock

end
