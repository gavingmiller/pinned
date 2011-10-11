class Pinned
  module Update
    def posts_update(opts={})
      request('/posts/update', opts)
    end
  end
end
