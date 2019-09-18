require 'test_helper'

class HackathonsControllerTest < ActionDispatch::IntegrationTest
  test "should get hackathons" do
    get hackathons_url
    assert_response :success
  end
end
