json.array!(@trips) do |trip|
  json.extract! trip, :start, :destination, :boat_id, :travel_id
  json.url trip_url(trip, format: :json)
end
