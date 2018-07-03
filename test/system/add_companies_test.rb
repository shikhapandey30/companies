require "application_system_test_case"

class AddCompaniesTest < ApplicationSystemTestCase
  setup do
    @add_company = add_companies(:one)
  end

  test "visiting the index" do
    visit add_companies_url
    assert_selector "h1", text: "Add Companies"
  end

  test "creating a Add company" do
    visit add_companies_url
    click_on "New Add Company"

    fill_in "Active", with: @add_company.active
    fill_in "City", with: @add_company.city
    fill_in "Company", with: @add_company.company
    fill_in "Country", with: @add_company.country
    fill_in "Postcode", with: @add_company.postcode
    fill_in "Startdate", with: @add_company.startdate
    fill_in "State", with: @add_company.state
    click_on "Create Add company"

    assert_text "Add company was successfully created"
    click_on "Back"
  end

  test "updating a Add company" do
    visit add_companies_url
    click_on "Edit", match: :first

    fill_in "Active", with: @add_company.active
    fill_in "City", with: @add_company.city
    fill_in "Company", with: @add_company.company
    fill_in "Country", with: @add_company.country
    fill_in "Postcode", with: @add_company.postcode
    fill_in "Startdate", with: @add_company.startdate
    fill_in "State", with: @add_company.state
    click_on "Update Add company"

    assert_text "Add company was successfully updated"
    click_on "Back"
  end

  test "destroying a Add company" do
    visit add_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add company was successfully destroyed"
  end
end
