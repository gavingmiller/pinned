require 'pinned'

config = YAML::load(File.read(File.join(ENV['HOME'], '.pinboard')))

n = Pinned.create(config['username'], config['password'])
n.all( :tag => 'books')
