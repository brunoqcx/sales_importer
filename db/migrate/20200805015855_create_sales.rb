class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :purchaser_name
      t.string :item_description
      t.decimal :item_price, :precision => 8, :scale => 2 
      t.integer :purchase_count
      t.string :merchant_adress
      t.string :merchant_name

      t.timestamps
    end
  end
end
