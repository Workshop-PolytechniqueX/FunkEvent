json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :id_user, :favorite_link_type, :favorite_link_id
  json.url favorite_url(favorite, format: :json)
end
