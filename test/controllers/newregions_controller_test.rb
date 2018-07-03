require 'test_helper'

class NewregionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newregion = newregions(:one)
  end

  test "should get index" do
    get newregions_url
    assert_response :success
  end

  test "should get new" do
    get new_newregion_url
    assert_response :success
  end

  test "should create newregion" do
    assert_difference('Newregion.count') do
      post newregions_url, params: { newregion: { regionname: @newregion.regionname } }
    end

    assert_redirected_to newregion_url(Newregion.last)
  end

  test "should show newregion" do
    get newregion_url(@newregion)
    assert_response :success
  end

  test "should get edit" do
    get edit_newregion_url(@newregion)
    assert_response :success
  end

  test "should update newregion" do
    patch newregion_url(@newregion), params: { newregion: { regionname: @newregion.regionname } }
    assert_redirected_to newregion_url(@newregion)
  end

  test "should destroy newregion" do
    assert_difference('Newregion.count', -1) do
      delete newregion_url(@newregion)
    end

    assert_redirected_to newregions_url
  end
end
