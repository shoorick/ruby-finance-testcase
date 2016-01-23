class Price < ActiveRecord::Base

  validates :price, numericality: { greater_than: 0, message: 'Price should be positive' }

  belongs_to :stock

end
