require 'test_helper'

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plants_index_url
    assert_response :success
  end

end
