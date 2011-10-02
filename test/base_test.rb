require File.expand_path('../helper', __FILE__)

class BaseTest < Test::Unit::TestCase
  def setup
    config = YAML::load(File.read(File.join(ENV['HOME'], '.pinboard')))
    @pinned = Pinned.create(config['username'], config['password'])
  end

  def test_default
    assert true
  end

  def test_posts
    # p @pinned.posts
  end

  def test_all
    p @pinned.all
  end
end
