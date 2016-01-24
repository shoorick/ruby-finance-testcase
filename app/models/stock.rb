class Stock < ActiveRecord::Base
  
  validates :company, presence: true
  
  has_many :prices
  
end
