require 'test_helper'
require 'rails-controller-testing' 
require 'set'
class WelcomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get welcome_page_welcome_url
    assert_response :success
  end

  test "We get different picture" do 
    x = 20
    set = Set[]
    for i in 0...20
       get welcome_page_welcome_url
       pic = assigns(:picture) 
       set.add(pic)     
    end

    for x in ["me_1.jpg","me_2.jpg","me_3.jpg"] do
      assert_includes set, x
    end 
  end


end
