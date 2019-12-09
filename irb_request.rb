require 'rest-client'

def search_on_bing(string = nil)
  url = "https://www.bing.com/search?q="+string
  response = RestClient.get url
  if response.code == 200
    f1 = File.new('response_headers.txt','w')
    f2 = File.new('response_body.html','w')
    f1 << response.headers
    f2 << response.body
  else
    puts 'Error'
  end
end

puts "Enter a string to search on bing.com: "
string = gets.chomp
search_on_bing(string)
