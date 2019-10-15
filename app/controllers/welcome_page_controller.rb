require 'net/http'

class WelcomePageController < ApplicationController
  def welcome
    pic_to_pick = rand(1..3)
    puts(request.remote_ip)
    if Rails.env.production? 
      url = URI.parse("http://api.ipstack.com/#{request.remote_ip}?access_key=8676bf81e65d5fe4f22f174f1de5840f")
    else 
      url = URI.parse("http://api.ipstack.com/75.91.247.219?access_key=8676bf81e65d5fe4f22f174f1de5840f")
    end
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    parsed = JSON.parse(res.body)
    puts "Got parsed"
    puts parsed
    new_entry = Visitor.create(country:parsed["country_name"],region:parsed["region_name"], city:parsed["city"], time: Time.current.to_s)
    @picture = "me_#{pic_to_pick}.jpg"
  end
end
 