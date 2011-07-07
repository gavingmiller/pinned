# pinboard.rb
Pinboard ( http://pinboard.in ) API wrapper by SingAlong ( https://github.com/SingAlong ), enhanced by me.

## Get all posts
<pre>u=gets.chomp
p=gets.chomp
pb=Pinboard.new(:username=>u, :password=>p)
pb.getHashes()</pre>

### All Posts Example
<pre>getHashes(:results => 5) # only five posts
getHashes(:format => 'json') # JSON
getHashes(:format => 'json', :results => 5)</pre>