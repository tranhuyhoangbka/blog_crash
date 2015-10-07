json.array! @posts do |post|
  json.extract! post, :id, :title
  json.post_url api_post_url(post)
  json.author do
    json.extract! post.author, :id, :name
  end
end
