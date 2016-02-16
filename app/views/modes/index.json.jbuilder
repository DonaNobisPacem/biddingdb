json.array!(@modes) do |mode|
  json.extract! mode, :id, :description
  json.url mode_url(mode, format: :json)
end
