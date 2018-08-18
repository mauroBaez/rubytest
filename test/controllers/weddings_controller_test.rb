require 'test_helper'

class WeddingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wedding = weddings(:one)
  end

  test "should get index" do
    get weddings_url
    assert_response :success
  end

  test "should get new" do
    get new_wedding_url
    assert_response :success
  end

  test "should create wedding" do
    assert_difference('Wedding.count') do
      post weddings_url, params: { wedding: { bride_name: @wedding.bride_name, bride_surname: @wedding.bride_surname, groom_name: @wedding.groom_name, groom_surname: @wedding.groom_surname } }
    end

    assert_redirected_to wedding_url(Wedding.last)
  end

  test "should show wedding" do
    get wedding_url(@wedding)
    assert_response :success
  end

  test "should get edit" do
    get edit_wedding_url(@wedding)
    assert_response :success
  end

  test "should update wedding" do
    patch wedding_url(@wedding), params: { wedding: { bride_name: @wedding.bride_name, bride_surname: @wedding.bride_surname, groom_name: @wedding.groom_name, groom_surname: @wedding.groom_surname } }
    assert_redirected_to wedding_url(@wedding)
  end

  test "should destroy wedding" do
    assert_difference('Wedding.count', -1) do
      delete wedding_url(@wedding)
    end

    assert_redirected_to weddings_url
  end
end
