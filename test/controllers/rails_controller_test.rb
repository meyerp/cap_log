require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get g" do
    get :g
    assert_response :success
  end

  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get shipment" do
    get :shipment
    assert_response :success
  end

end
