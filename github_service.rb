require "json"
require "rest-client"

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

p repos.count
# => 30

p repos.first["owner"]["login"]
# => "lewagon"
