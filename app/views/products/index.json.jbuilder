json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :product_category, :product_subcategory, :product_alone_volume, :products_batch_volume, :amount_per_batch, :product_alone_mass, :products_lot_mass, :product_reference
  json.url product_url(product, format: :json)
end
