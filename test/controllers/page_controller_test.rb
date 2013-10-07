require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get page" do
    get :page
    assert_response :success
  end

  test "should get recipes" do
    get :recipes
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get articles" do
    get :articles
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
