require 'test_helper'

class AppsControllerTest < ActionDispatch::IntegrationTest
  test "should get texty" do
    get apps_texty_url
    assert_response :success
  end

end
