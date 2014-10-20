class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :fullname
      t.string :email
      t.string :country
      t.string :phone_number
      t.string :company
      t.string :object
      t.string :content
      
      t.timestamps
    end
  end
end
