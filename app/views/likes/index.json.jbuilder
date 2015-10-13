json.array!(@likes) do |like|
  json.extract! like, :id, :user_id, :like_link_type, :like_link_id
  json.url like_url(like, format: :json)
end
