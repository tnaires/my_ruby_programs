# neturil.rb
require 'net/http'

uri = URI('http://rubylearning.com/data/text.txt')
res = Net::HTTP.get_response(uri)
puts res.code
puts res.message

puts Net::HTTP.get(uri)

