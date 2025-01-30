require 'uri'
require 'net/http'
require 'json'

url = URI("https://api.render.com/v1/services/srv-cts1p7bqf0us73dno9p0/deploys?limit=20")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer rnd_usZzwGeqcvE0wjc0dr3nAbiPBXOI'

begin
  response = http.request(request)

  # Check if the response is successful (status 200)
  if response.code.to_i == 200
    # Parse and pretty-print the JSON response
    deploys = JSON.parse(response.body)
    puts JSON.pretty_generate(deploys)
  else
    puts "Error: #{response.code} - #{response.message}"
  end
rescue StandardError => e
  puts "An error occurred: #{e.message}"
end
