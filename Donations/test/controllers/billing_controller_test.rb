require 'test_helper'

class BillingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billing_index_url
    assert_response :success
  end

  test "should get new" do
    get billing_new_url
    assert_response :success
  end

end
