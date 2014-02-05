json.array!(@smokes) do |smoke|
  json.extract! smoke, :user_id, :smoke_date, :smoke_lat, :smoke_long
  json.url smoke_url(smoke, format: :json)
end