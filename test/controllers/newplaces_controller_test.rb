require 'test_helper'

class NewplacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newplace = newplaces(:one)
  end

  test "should get index" do
    get newplaces_url
    assert_response :success
  end

  test "should get new" do
    get new_newplace_url
    assert_response :success
  end

  test "should create newplace" do
    assert_difference('Newplace.count') do
      post newplaces_url, params: { newplace: { company: @newplace.company, nodename: @newplace.nodename, placename: @newplace.placename } }
    end

    assert_redirected_to newplace_url(Newplace.last)
  end

  test "should show newplace" do
    get newplace_url(@newplace)
    assert_response :success
  end

  test "should get edit" do
    get edit_newplace_url(@newplace)
    assert_response :success
  end

  test "should update newplace" do
    patch newplace_url(@newplace), params: { newplace: { company: @newplace.company, nodename: @newplace.nodename, placename: @newplace.placename } }
    assert_redirected_to newplace_url(@newplace)
  end

  test "should destroy newplace" do
    assert_difference('Newplace.count', -1) do
      delete newplace_url(@newplace)
    end

    assert_redirected_to newplaces_url
  end
end
