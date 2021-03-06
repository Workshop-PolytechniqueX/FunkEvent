json.array!(@performers) do |performer|
  json.extract! performer, :id, :name, :performer_category, :genre, :description, :url_performer
  json.url performer_url(performer, format: :json)
end
