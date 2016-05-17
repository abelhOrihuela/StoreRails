json.array!(@sales) do |sale|
  json.extract! sale, :id, :total, :total_parcial, :client_id, :seller_id
  json.url sale_url(sale, format: :json)
end
