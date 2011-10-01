$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'notice/version'

Gem::Specification.new 'notice', Notice::VERSION do |n|
  s.description = "Notice is an API wrapper for the Pinboard.in service by Maciej Ceglowski"
  s.summary     = "Easy access to the pinboard api."
  s.date        = "2011-10-01"
  s.authors     = ["Gavin Miller"]
  s.email       = "gavin@randomtype.ca"
  s.files       = `git ls-files`.split("\n")
  s.homepage    = "randomtype.ca/projects/notice-gem/"
end

