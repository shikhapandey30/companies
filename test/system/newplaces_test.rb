require "application_system_test_case"

class NewplacesTest < ApplicationSystemTestCase
  setup do
    @newplace = newplaces(:one)
  end

  test "visiting the index" do
    visit newplaces_url
    assert_selector "h1", text: "Newplaces"
  end

  test "creating a Newplace" do
    visit newplaces_url
    click_on "New Newplace"

    fill_in "Company", with: @newplace.company
    fill_in "Nodename", with: @newplace.nodename
    fill_in "Placename", with: @newplace.placename
    click_on "Create Newplace"

    assert_text "Newplace was successfully created"
    click_on "Back"
  end

  test "updating a Newplace" do
    visit newplaces_url
    click_on "Edit", match: :first

    fill_in "Company", with: @newplace.company
    fill_in "Nodename", with: @newplace.nodename
    fill_in "Placename", with: @newplace.placename
    click_on "Update Newplace"

    assert_text "Newplace was successfully updated"
    click_on "Back"
  end

  test "destroying a Newplace" do
    visit newplaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newplace was successfully destroyed"
  end
end
