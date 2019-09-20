class WelcomePageController < ApplicationController
  def welcome
    pic_to_pick = rand(1..3)
    puts pic_to_pick
    picture = "me_#{pic_to_pick}.jpg"
    @picture = picture
  end
end
 