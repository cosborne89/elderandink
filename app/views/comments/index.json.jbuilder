json.array!(@comments) do |comment|
  json.extract! comment, :author, :post_id, :body, :email
  json.url comment_url(comment, format: :json)
end
