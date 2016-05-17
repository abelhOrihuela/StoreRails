json.array!(@clients) do |client|
  json.extract! client, :id, :name, :balance, :type_client_id
  json.url client_url(client, format: :json)
end
