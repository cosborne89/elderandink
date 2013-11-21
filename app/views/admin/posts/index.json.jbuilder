json.array!(@posts) do |post|
  json.extract! post, :title, :body, :published, :published_date, :title_image, :tag_ids, :category_id, :comment_ids, :series_id
  json.url post_url(post, format: :json)
end
