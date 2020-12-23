require 'test_helper'

class OkadatodolistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get okadatodolists_new_url
    assert_response :success
  end

end
