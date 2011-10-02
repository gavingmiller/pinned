require 'rubygems'
require 'httparty'

class Pinned
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

  def all(options={})
    options.merge!({ :basic_auth => @auth })
    self.class.get('/posts/all', options)
  end

  def posts(options={})
    options.merge!({ :basic_auth => @auth })
    self.class.get('/posts/get', options)
  end

  #####
  # To look at 
  #####

  def recentPosts(options={})
    apiData = { :basic_auth=>@auth }
    apiData.merge!(options)
    self.class.get('/posts/recent', apiData)
  end

  def addPost(u, d, options={})
    apiQuery = {:url=>u, :description=>d}.merge(options)
    apiData = { :basic_auth=>@auth, :query=>apiQuery }
    self.class.get('/posts/add', apiData)
  end

  def deletePost(url)
    apiQuery = { :url=>url }
    apiData = { :basic_auth=>@auth, :query=>apiQuery }
    self.class.get('/posts/delete', apiData)
  end

  def getDates(tag='')
    if(tag.strip.empty?)
      apiData = { :basic_auth=>@auth, :query=>{:tag=>tag} }
    else
      apiData = { :basic_auth=>@auth }
    end

    self.class.get('/posts/delete', apiData)
  end

  def getHashes(options={})
    apiData = { :basic_auth=>@auth, :query=>options }
    self.class.get("/posts/all", apiData)
  end

  def suggestPosts(url='')
    if(url.strip.empty?)
      apiData = { :basic_auth=>@auth, :query=>{:url=>url} }
    else
      apiData = { :basic_auth=>@auth }
    end

    self.class.get('/posts/suggest', apiData)
  end
end
