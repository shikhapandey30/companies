require 'test_helper'

class NewcitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newcity = newcities(:one)
  end

  test "should get index" do
    get newcities_url
    assert_response :success
  end

  test "should get new" do
    get new_newcity_url
    assert_response :success
  end

  test "should create newcity" do
    assert_difference('Newcity.count') do
      post newcities_url, params: { newcity: { cityname: @newcity.cityname, state: @newcity.state } }
    end

    assert_redirected_to newcity_url(Newcity.last)
  end

  test "should show newcity" do
    get newcity_url(@newcity)
    assert_response :success
  end

  test "should get edit" do
    get edit_newcity_url(@newcity)
    assert_response :success
  end

  test "should update newcity" do
    patch newcity_url(@newcity), params: { newcity: { cityname: @newcity.cityname, state: @newcity.state } }
    assert_redirected_to newcity_url(@newcity)
  end

  test "should destroy newcity" do
    assert_difference('Newcity.count', -1) do
      delete newcity_url(@newcity)
    end

    assert_redirected_to newcities_url
  end
end
