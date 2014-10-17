json.array!(@messages) do |message|
  json.extract! message, :id, :fullname, :email, :country, :phone_number, :company, :object, :content
  json.url message_url(message, format: :json)
end
