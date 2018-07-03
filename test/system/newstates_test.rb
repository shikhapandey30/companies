require "application_system_test_case"

class NewstatesTest < ApplicationSystemTestCase
  setup do
    @newstate = newstates(:one)
  end

  test "visiting the index" do
    visit newstates_url
    assert_selector "h1", text: "Newstates"
  end

  test "creating a Newstate" do
    visit newstates_url
    click_on "New Newstate"

    fill_in "Country", with: @newstate.country
    fill_in "Statename", with: @newstate.statename
    click_on "Create Newstate"

    assert_text "Newstate was successfully created"
    click_on "Back"
  end

  test "updating a Newstate" do
    visit newstates_url
    click_on "Edit", match: :first

    fill_in "Country", with: @newstate.country
    fill_in "Statename", with: @newstate.statename
    click_on "Update Newstate"

    assert_text "Newstate was successfully updated"
    click_on "Back"
  end

  test "destroying a Newstate" do
    visit newstates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newstate was successfully destroyed"
  end
end
