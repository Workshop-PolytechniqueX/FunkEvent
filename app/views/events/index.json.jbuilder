json.array!(@events) do |event|
  json.extract! event, :id, :name, :place_id, :performer_id, :description, :date, :price
  json.url event_url(event, format: :json)
end
