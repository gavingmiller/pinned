require 'notice'

config = YAML::load(File.read(File.join(ENV['HOME'], '.pinboard')))

n = Notice.create(config['username'], config['password'])
n.all( :tag => 'books')
