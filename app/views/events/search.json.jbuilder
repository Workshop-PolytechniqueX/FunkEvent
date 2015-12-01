json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :price, :date, :place_id, :performer_id
  json.url event_url(event, format: :json)
end
