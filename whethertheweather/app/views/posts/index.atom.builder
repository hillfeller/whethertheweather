atom_feed do |feed|
  feed.title "Weather Updates"
  @posts.each do |post|
    feed.entry post do |entry|

      entry.title(post.title)
      entry.body(post.body)

      entry.user do |user|
        user.user_name
      end
    end
  end
end
