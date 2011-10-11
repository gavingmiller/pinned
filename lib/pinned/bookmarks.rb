class Pinned
  module Bookmarks
    def posts_add(opts={})
      request('/posts/add', opts)
    end

    def posts_delete(opts={})
      request('/posts/delete', opts)
    end

    def posts_get(opts={})
      request('/posts/get', opts)
    end

    def posts_dates(opts={})
      request('/posts/dates', opts)
    end

    def posts_recent(opts={})
      request('/posts/recent', opts)
    end

    def posts_all(opts={})
      request('/posts/all', opts)
    end

    def posts_suggest(opts={})
      request('/posts/suggest', opts)
    end
  end
end

