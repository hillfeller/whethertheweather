atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @posts.each do |post|
    next if post.updated_at.blank?

    feed.entry( post ) do |entry|

      entry.title post.title
      entry.body post.body, :type => 'html'

      # the strftime is needed to work with Google Reader.
      entry.updated(post.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))

      entry.author do |email|
        author.name entry.author_name
      end
    end
  end
end
