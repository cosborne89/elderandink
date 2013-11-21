json.array!(@categories) do |category|
  json.extract! category, :title, :banner_image, :description, :post_ids
  json.url category_url(category, format: :json)
end
