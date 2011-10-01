[Pinboard](http://pinboard.in) API wrapper by SingAlong, enhanced by [adr-enal](https://github.com/adr-enal-in/pinboard-ruby).

## Get all posts
<pre>u=gets.chomp
p=gets.chomp
pb=Pinboard.new(:username=>u, :password=>p)
pb.getHashes()</pre>

### All Posts Example
<pre>getHashes(:results => 5) # only five posts
getHashes(:format => 'json') # JSON
getHashes(:format => 'json', :results => 5)</pre>
