#!/usr/bin/ruby

require 'pp'
require 'twitter';

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "uVjFonGBh9zILPogHQ6YZltoM"
    config.consumer_secret     = "G0Ho23INEFqkx82YEuHMCw2urAhnpVVlj64IPJMeVT7vyQhBiA"
    config.access_token        = "4660057183-GiiYX7jKJmpOJgW0GfSx9fuK2DHd0foIshRGVj9"
    config.access_token_secret = "ddkkA1L3YuOsNbTjcz1rTHd3X7SoR2dQ2ewdFY0MkFMPq"
end

line_media = client.user_timeline("o__sari__o")

line_media.each do |m|
  m.media.each do |tp|
    pp tp.media_url.to_s
  end
end



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
