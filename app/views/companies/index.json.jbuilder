json.array!(@companies) do |company|
  json.extract! company, :id, :name, :company_type, :registration_number, :vat_number, :age, :size, :address, :zip_code, :city, :country, :phone_number, :website
  json.url company_url(company, format: :json)
end
