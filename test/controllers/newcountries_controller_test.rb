require 'test_helper'

class NewcountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newcountry = newcountries(:one)
  end

  test "should get index" do
    get newcountries_url
    assert_response :success
  end

  test "should get new" do
    get new_newcountry_url
    assert_response :success
  end

  test "should create newcountry" do
    assert_difference('Newcountry.count') do
      post newcountries_url, params: { newcountry: { code: @newcountry.code, countryname: @newcountry.countryname } }
    end

    assert_redirected_to newcountry_url(Newcountry.last)
  end

  test "should show newcountry" do
    get newcountry_url(@newcountry)
    assert_response :success
  end

  test "should get edit" do
    get edit_newcountry_url(@newcountry)
    assert_response :success
  end

  test "should update newcountry" do
    patch newcountry_url(@newcountry), params: { newcountry: { code: @newcountry.code, countryname: @newcountry.countryname } }
    assert_redirected_to newcountry_url(@newcountry)
  end

  test "should destroy newcountry" do
    assert_difference('Newcountry.count', -1) do
      delete newcountry_url(@newcountry)
    end

    assert_redirected_to newcountries_url
  end
end
