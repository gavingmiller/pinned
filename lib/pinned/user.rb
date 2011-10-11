class Pinned
  module User
    def user_secret(opts={})
      request('/user/secret', opts)
    end
  end
end

