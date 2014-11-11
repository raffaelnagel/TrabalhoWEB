json.array!(@timestamps) do |timestamp|
  json.extract! timestamp, :id, :project, :horas
  json.url timestamp_url(timestamp, format: :json)
end
