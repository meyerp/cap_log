class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.decimal :alone_volume
      t.decimal :batch_volume
      t.integer :amount_per_batch
      t.string :alone_mass
      t.string :batch_mass
      t.string :reference
      t.integer :company_id

      t.timestamps
    end
  end
end
