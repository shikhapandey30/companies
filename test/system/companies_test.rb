require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "Active", with: @company.Active
    fill_in "City", with: @company.City
    fill_in "Country", with: @company.Country
    fill_in "Name", with: @company.Name
    fill_in "Postcode", with: @company.Postcode
    fill_in "Startdate", with: @company.Startdate
    fill_in "State", with: @company.State
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "Active", with: @company.Active
    fill_in "City", with: @company.City
    fill_in "Country", with: @company.Country
    fill_in "Name", with: @company.Name
    fill_in "Postcode", with: @company.Postcode
    fill_in "Startdate", with: @company.Startdate
    fill_in "State", with: @company.State
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
