require 'test_helper'

class PostingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postings_new_url
    assert_response :success
  end

end
