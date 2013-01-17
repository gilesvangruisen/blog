module PostsHelper
  def join_tags(post)
    post.tags.map { |t| t.name}.join(", ")
  end
  def markdown(text)
    text.blank? ? "" : Maruku.new(text).to_html
  end
end