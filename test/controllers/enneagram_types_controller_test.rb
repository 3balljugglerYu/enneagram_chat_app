require 'test_helper'

class EnneagramTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enneagram_types_index_url
    assert_response :success
  end

end
