$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'notice/version'

Gem::Specification.new 'notice', Notice::VERSION do |n|
  n.description = "Notice is an API wrapper for the Pinboard.in service by Maciej Ceglowski"
  n.summary     = "Easy access to the pinboard api."
  n.date        = "2011-10-01"
  n.authors     = ["Gavin Miller"]
  n.email       = "gavin@randomtype.ca"
  n.files       = `git ls-files`.split("\n")
  n.homepage    = "http://randomtype.ca/projects/notice-gem/"
end

