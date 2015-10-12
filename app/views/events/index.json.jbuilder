json.array!(@events) do |event|
  json.extract! event, :id, :name, :id_place, :id_performer, :description, :date, :price
  json.url event_url(event, format: :json)
end
