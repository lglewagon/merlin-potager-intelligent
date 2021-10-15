require 'test_helper'

class SquaresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get squares_show_url
    assert_response :success
  end

end
