address = 'http://satishtalim.github.com/webruby/chapter3.html'
regex = /\bthe\b/

# Using net/http library
require 'net/http'

uri = URI(address)
puts Net::HTTP.get(uri).scan(regex).count

# Using open-uri
require 'open-uri'

f = open(address)
puts f.readlines.join.scan(regex).count

# Using Hpricot
require 'hpricot'

page = Hpricot(open(address))
puts page.at(:html).inner_html.scan(regex).count

# Using nokogiri
require 'nokogiri'
doc = Nokogiri::HTML(open(address))
puts doc.xpath('//html').first.content.scan(regex).count

