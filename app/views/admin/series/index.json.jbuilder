json.array!(@series) do |series|
  json.extract! series, :title, :banner_image, :description, :post_ids
  json.url series_url(series, format: :json)
end
