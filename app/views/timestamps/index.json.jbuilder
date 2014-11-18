json.array!(@timestamps) do |timestamp|
  json.extract! timestamp, :id, :members_id, :projects_id, :hours, :date
  json.url timestamp_url(timestamp, format: :json)
end
