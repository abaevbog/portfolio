class WelcomePageController < ApplicationController
  def welcome
    pic_to_pick = rand(1..3)
    @picture = "me_#{pic_to_pick}.jpg"
  end
end
 