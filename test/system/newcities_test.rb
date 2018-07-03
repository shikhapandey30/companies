require "application_system_test_case"

class NewcitiesTest < ApplicationSystemTestCase
  setup do
    @newcity = newcities(:one)
  end

  test "visiting the index" do
    visit newcities_url
    assert_selector "h1", text: "Newcities"
  end

  test "creating a Newcity" do
    visit newcities_url
    click_on "New Newcity"

    fill_in "Cityname", with: @newcity.cityname
    fill_in "State", with: @newcity.state
    click_on "Create Newcity"

    assert_text "Newcity was successfully created"
    click_on "Back"
  end

  test "updating a Newcity" do
    visit newcities_url
    click_on "Edit", match: :first

    fill_in "Cityname", with: @newcity.cityname
    fill_in "State", with: @newcity.state
    click_on "Update Newcity"

    assert_text "Newcity was successfully updated"
    click_on "Back"
  end

  test "destroying a Newcity" do
    visit newcities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newcity was successfully destroyed"
  end
end
