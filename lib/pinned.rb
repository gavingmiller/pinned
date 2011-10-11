libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'pinned/update'
require 'pinned/bookmarks'
require 'pinned/tags'
require 'pinned/user'
require 'pinned/base'
