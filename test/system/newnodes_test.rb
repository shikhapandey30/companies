require "application_system_test_case"

class NewnodesTest < ApplicationSystemTestCase
  setup do
    @newnode = newnodes(:one)
  end

  test "visiting the index" do
    visit newnodes_url
    assert_selector "h1", text: "Newnodes"
  end

  test "creating a Newnode" do
    visit newnodes_url
    click_on "New Newnode"

    fill_in "Nodename", with: @newnode.nodename
    fill_in "Place", with: @newnode.place
    click_on "Create Newnode"

    assert_text "Newnode was successfully created"
    click_on "Back"
  end

  test "updating a Newnode" do
    visit newnodes_url
    click_on "Edit", match: :first

    fill_in "Nodename", with: @newnode.nodename
    fill_in "Place", with: @newnode.place
    click_on "Update Newnode"

    assert_text "Newnode was successfully updated"
    click_on "Back"
  end

  test "destroying a Newnode" do
    visit newnodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newnode was successfully destroyed"
  end
end
