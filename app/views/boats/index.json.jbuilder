json.array!(@boats) do |boat|
  json.extract! boat, :title, :coxed, :seats
  json.url boat_url(boat, format: :json)
end
