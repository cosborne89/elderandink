json.array!(@tags) do |tag|
  json.extract! tag, :title, :banner_image, :description, :post_ids
  json.url tag_url(tag, format: :json)
end
