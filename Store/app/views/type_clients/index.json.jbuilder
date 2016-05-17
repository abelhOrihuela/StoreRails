json.array!(@type_clients) do |type_client|
  json.extract! type_client, :id, :name
  json.url type_client_url(type_client, format: :json)
end
