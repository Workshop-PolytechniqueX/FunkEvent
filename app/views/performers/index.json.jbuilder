json.array!(@performers) do |performer|
  json.extract! performer, :id, :name, :type, :genre, :description, :url
  json.url performer_url(performer, format: :json)
end
