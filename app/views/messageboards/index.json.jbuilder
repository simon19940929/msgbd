json.array!(@messageboards) do |messageboard|
  json.extract! messageboard, :id, :title, :description
  json.url messageboard_url(messageboard, format: :json)
end
