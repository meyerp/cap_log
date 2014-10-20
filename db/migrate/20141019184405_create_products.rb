class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_category
      t.string :product_subcategory
      t.decimal :product_alone_volume
      t.decimal :products_batch_volume
      t.integer :amount_per_batch
      t.string :product_alone_mass
      t.string :products_lot_mass
      t.string :product_reference
      t.integer :company_id
      t.timestamps
    end
  end
end
