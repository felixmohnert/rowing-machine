json.array!(@rowers) do |rower|
  json.extract! rower, :name, :birthdate, :address, :zip, :city
  json.url rower_url(rower, format: :json)
end
