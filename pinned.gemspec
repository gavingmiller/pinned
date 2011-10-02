$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'pinned/version'

Gem::Specification.new 'pinned', Pinned::VERSION do |n|
  n.description = "Pinned is an API wrapper for the Pinboard.in service by Maciej Ceglowski"
  n.summary     = "Easy access to the pinboard api."
  n.date        = "2011-10-01"
  n.authors     = ["Gavin Miller"]
  n.email       = "gavin@randomtype.ca"
  n.files       = `git ls-files`.split("\n")
  n.homepage    = "http://randomtype.ca/projects/pinned/"
end

