class Pinned
  module Bookmarks
    def posts_add
      #TODO
    end

    def posts_delete
      #TODO
    end

    def posts_get(opts={})
      request('/posts/get', opts)
    end

    def posts_dates
      #TODO
    end

    def posts_recent
      #TODO
    end

    def posts_all(opts={})
      request('/posts/all', opts)
    end

    def posts_suggest
      #TODO
    end
  end
end

