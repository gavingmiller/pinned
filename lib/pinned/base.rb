require 'rubygems'
require 'httparty'

class Pinned
  include Pinned::Update
  include Pinned::Bookmarks
  include Pinned::Tags
  include Pinned::User

  include HTTParty

  base_uri 'https://api.pinboard.in/v1'

  class << self
    def create(u, p)
      Pinned.new(:username => u, :password => p)
    end
  end

  def initialize(auth)
    @auth = auth
  end

  def request(url, opts={})
    opts.merge!({ :basic_auth => @auth })
    self.class.get(url, opts)
  end
end
