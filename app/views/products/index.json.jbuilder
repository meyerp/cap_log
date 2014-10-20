json.array!(@products) do |product|
  json.extract! product, :id, :name, :category, :subcategory, :alone_volume, :batch_volume, :amount_per_batch, :alone_mass, :batch_mass, :reference
  json.url product_url(product, format: :json)
end
