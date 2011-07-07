# pinboard.rb
Pinboard API wrapper by (https://github.com/SingAlong)[SingAlong], fixed by me.

## Get all posts
`u=gets.chomp`
`p=gets.chomp`
`pb=Pinboard.new(:username=>u, :password=>p)`
`pb.getHashes()`

### All Posts Example
getHashes(:results => 5) # only five posts
getHashes(:format => 'json') # JSON
getHashes(:format => 'json', :results => 5)