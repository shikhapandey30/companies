require "application_system_test_case"

class NewregionsTest < ApplicationSystemTestCase
  setup do
    @newregion = newregions(:one)
  end

  test "visiting the index" do
    visit newregions_url
    assert_selector "h1", text: "Newregions"
  end

  test "creating a Newregion" do
    visit newregions_url
    click_on "New Newregion"

    fill_in "Regionname", with: @newregion.regionname
    click_on "Create Newregion"

    assert_text "Newregion was successfully created"
    click_on "Back"
  end

  test "updating a Newregion" do
    visit newregions_url
    click_on "Edit", match: :first

    fill_in "Regionname", with: @newregion.regionname
    click_on "Update Newregion"

    assert_text "Newregion was successfully updated"
    click_on "Back"
  end

  test "destroying a Newregion" do
    visit newregions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newregion was successfully destroyed"
  end
end
