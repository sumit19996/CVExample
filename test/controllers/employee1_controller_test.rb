require 'test_helper'

class Employee1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee1_index_url
    assert_response :success
  end

end
