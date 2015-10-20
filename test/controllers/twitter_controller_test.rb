require 'test_helper'

class TwitterControllerTest < ActionController::TestCase
  test "should get authentication" do
    get :authentication
    assert_response :success
  end

end
