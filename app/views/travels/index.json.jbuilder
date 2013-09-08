json.array!(@travels) do |travel|
  json.extract! travel, :trip_id, :rower_id
  json.url travel_url(travel, format: :json)
end
