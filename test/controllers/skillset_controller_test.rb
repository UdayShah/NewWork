require 'test_helper'

class SkillsetControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get skillset_new_url
    assert_response :success
  end

end
