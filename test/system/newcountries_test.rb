require "application_system_test_case"

class NewcountriesTest < ApplicationSystemTestCase
  setup do
    @newcountry = newcountries(:one)
  end

  test "visiting the index" do
    visit newcountries_url
    assert_selector "h1", text: "Newcountries"
  end

  test "creating a Newcountry" do
    visit newcountries_url
    click_on "New Newcountry"

    fill_in "Code", with: @newcountry.code
    fill_in "Countryname", with: @newcountry.countryname
    click_on "Create Newcountry"

    assert_text "Newcountry was successfully created"
    click_on "Back"
  end

  test "updating a Newcountry" do
    visit newcountries_url
    click_on "Edit", match: :first

    fill_in "Code", with: @newcountry.code
    fill_in "Countryname", with: @newcountry.countryname
    click_on "Update Newcountry"

    assert_text "Newcountry was successfully updated"
    click_on "Back"
  end

  test "destroying a Newcountry" do
    visit newcountries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newcountry was successfully destroyed"
  end
end
