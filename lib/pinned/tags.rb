class Pinned
  module Tags
    def tags_get(opts={})
      request('/tags/get', opts)
    end

    def tags_delete(opts={})
      request('/tags/delete', opts)
    end

    def tags_rename(opts={})
      request('/tags/rename', opts)
    end
  end
end
