require "application_system_test_case"

class UserssesTest < ApplicationSystemTestCase
  setup do
    @userss = usersses(:one)
  end

  test "visiting the index" do
    visit usersses_url
    assert_selector "h1", text: "Usersses"
  end

  test "creating a Userss" do
    visit usersses_url
    click_on "New Userss"

    fill_in "Active", with: @userss.active
    fill_in "Blob", with: @userss.blob
    fill_in "Company", with: @userss.company_id
    fill_in "Email", with: @userss.email
    fill_in "End Date", with: @userss.end_date
    fill_in "First Name", with: @userss.first_name
    fill_in "Id", with: @userss.id
    fill_in "Image", with: @userss.image_id
    fill_in "Last Name", with: @userss.last_name
    fill_in "Monthly Charge", with: @userss.monthly_charge
    fill_in "Notes", with: @userss.notes
    fill_in "Role", with: @userss.role_id
    fill_in "Start Date", with: @userss.start_date
    click_on "Create Userss"

    assert_text "Userss was successfully created"
    click_on "Back"
  end

  test "updating a Userss" do
    visit usersses_url
    click_on "Edit", match: :first

    fill_in "Active", with: @userss.active
    fill_in "Blob", with: @userss.blob
    fill_in "Company", with: @userss.company_id
    fill_in "Email", with: @userss.email
    fill_in "End Date", with: @userss.end_date
    fill_in "First Name", with: @userss.first_name
    fill_in "Id", with: @userss.id
    fill_in "Image", with: @userss.image_id
    fill_in "Last Name", with: @userss.last_name
    fill_in "Monthly Charge", with: @userss.monthly_charge
    fill_in "Notes", with: @userss.notes
    fill_in "Role", with: @userss.role_id
    fill_in "Start Date", with: @userss.start_date
    click_on "Update Userss"

    assert_text "Userss was successfully updated"
    click_on "Back"
  end

  test "destroying a Userss" do
    visit usersses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userss was successfully destroyed"
  end
end
