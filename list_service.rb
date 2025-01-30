require 'uri'
require 'net/http'

url = URI("https://api.render.com/v1/services?includePreviews=true&limit=20")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer rnd_usZzwGeqcvE0wjc0dr3nAbiPBXOI'

response = http.request(request)
puts response.read_body