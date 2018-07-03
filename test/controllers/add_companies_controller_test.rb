require 'test_helper'

class AddCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_company = add_companies(:one)
  end

  test "should get index" do
    get add_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_add_company_url
    assert_response :success
  end

  test "should create add_company" do
    assert_difference('AddCompany.count') do
      post add_companies_url, params: { add_company: { active: @add_company.active, city: @add_company.city, company: @add_company.company, country: @add_company.country, postcode: @add_company.postcode, startdate: @add_company.startdate, state: @add_company.state } }
    end

    assert_redirected_to add_company_url(AddCompany.last)
  end

  test "should show add_company" do
    get add_company_url(@add_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_company_url(@add_company)
    assert_response :success
  end

  test "should update add_company" do
    patch add_company_url(@add_company), params: { add_company: { active: @add_company.active, city: @add_company.city, company: @add_company.company, country: @add_company.country, postcode: @add_company.postcode, startdate: @add_company.startdate, state: @add_company.state } }
    assert_redirected_to add_company_url(@add_company)
  end

  test "should destroy add_company" do
    assert_difference('AddCompany.count', -1) do
      delete add_company_url(@add_company)
    end

    assert_redirected_to add_companies_url
  end
end
