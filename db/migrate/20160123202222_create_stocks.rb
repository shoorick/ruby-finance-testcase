class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string      :company
      t.string      :symbol
      t.float       :current_price
      t.datetime    :last_synced_at
      t.timestamps null: false
    end
    
    add_index :stocks, :last_synced_at
    add_index :stocks, :company
    add_index :stocks, :symbol
  end
end
