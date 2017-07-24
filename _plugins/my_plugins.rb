require "jekyll-categories"
require "titleize"

Jekyll::Hooks.register :posts, :post_render do |post|
  post.data["title"].titleize!
end
