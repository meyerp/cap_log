class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_type
      t.integer :registration_number
      t.string :vat_number
      t.string :age
      t.string :size
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :website

      t.timestamps
    end
  end
end
