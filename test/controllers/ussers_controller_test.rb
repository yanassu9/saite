require 'test_helper'

class UssersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ussers_new_url
    assert_response :success
  end

end
