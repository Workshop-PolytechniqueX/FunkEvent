json.array!(@images) do |image|
  json.extract! image, :id, :image_link_type, :image_link_id, :url
  json.url image_url(image, format: :json)
end
