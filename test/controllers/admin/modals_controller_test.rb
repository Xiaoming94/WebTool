require 'test_helper'

class Admin::ModalsControllerTest < ActionController::TestCase
  test "should get picture" do
    get :picture
    assert_response :success
  end

  test "should get remote-picture" do
    get :remote-picture
    assert_response :success
  end

  test "should get link" do
    get :link
    assert_response :success
  end

  test "should get addpicture" do
    get :addpicture
    assert_response :success
  end

  test "should get addlink" do
    get :addlink
    assert_response :success
  end

end
