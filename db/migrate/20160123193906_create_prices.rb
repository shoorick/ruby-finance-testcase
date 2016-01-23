class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer     :stock_id
      t.float       :price
      t.datetime    :datetime
      t.timestamps
    end
    
    add_index :prices, :stock_id
    add_index :prices, :datetime
  end
end
