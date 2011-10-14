require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get read" do
    get :read
    assert_response :success
  end

end
