require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get categories_open_url
    assert_response :success
  end

  test "should get debit" do
    get categories_debit_url
    assert_response :success
  end

  test "should get credit" do
    get categories_credit_url
    assert_response :success
  end

  test "should get close" do
    get categories_close_url
    assert_response :success
  end

end
