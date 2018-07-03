require 'test_helper'

class NewnodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newnode = newnodes(:one)
  end

  test "should get index" do
    get newnodes_url
    assert_response :success
  end

  test "should get new" do
    get new_newnode_url
    assert_response :success
  end

  test "should create newnode" do
    assert_difference('Newnode.count') do
      post newnodes_url, params: { newnode: { nodename: @newnode.nodename, place: @newnode.place } }
    end

    assert_redirected_to newnode_url(Newnode.last)
  end

  test "should show newnode" do
    get newnode_url(@newnode)
    assert_response :success
  end

  test "should get edit" do
    get edit_newnode_url(@newnode)
    assert_response :success
  end

  test "should update newnode" do
    patch newnode_url(@newnode), params: { newnode: { nodename: @newnode.nodename, place: @newnode.place } }
    assert_redirected_to newnode_url(@newnode)
  end

  test "should destroy newnode" do
    assert_difference('Newnode.count', -1) do
      delete newnode_url(@newnode)
    end

    assert_redirected_to newnodes_url
  end
end
