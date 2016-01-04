#!/usr/bin/ruby

require 'net/http'
require 'uri'
require 'pp'
require 'twitter';

uri = URI.parse("http://localhost:9999")

#make post data
pos = Net::HTTP::Post.new(uri.to_s)
pos.set_form_data({
  :a => "hoge",
  :ss => "jjj",
})


client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "uVjFonGBh9zILPogHQ6YZltoM"
    config.consumer_secret     = "G0Ho23INEFqkx82YEuHMCw2urAhnpVVlj64IPJMeVT7vyQhBiA"
    config.access_token        = "4660057183-GiiYX7jKJmpOJgW0GfSx9fuK2DHd0foIshRGVj9"
    config.access_token_secret = "ddkkA1L3YuOsNbTjcz1rTHd3X7SoR2dQ2ewdFY0MkFMPq"
end

p client.TragetUser("o__sari__o")
class Aff

  def initialize
    @bodys = Hash.new
  end

  def []=(a, b)
    @bodys[a] = b
  end
end

a = Aff.new
a['fsss'] = "new class"
a['fsaa'] = "new lkdjflkjk  class"
