require "application_system_test_case"

class CbOfficesTest < ApplicationSystemTestCase
  setup do
    @cb_office = cb_offices(:one)
  end

  test "visiting the index" do
    visit cb_offices_url
    assert_selector "h1", text: "Cb Offices"
  end

  test "creating a Cb office" do
    visit cb_offices_url
    click_on "New Cb Office"

    fill_in "Address1", with: @cb_office.address1
    fill_in "Address2", with: @cb_office.address2
    fill_in "City", with: @cb_office.city
    fill_in "Country code", with: @cb_office.country_code
    fill_in "Description", with: @cb_office.description
    fill_in "Latitude", with: @cb_office.latitude
    fill_in "Longitude", with: @cb_office.longitude
    fill_in "Object", with: @cb_office.object_id
    fill_in "Office", with: @cb_office.office_id
    fill_in "Region", with: @cb_office.region
    fill_in "State code", with: @cb_office.state_code
    fill_in "Zip code", with: @cb_office.zip_code
    click_on "Create Cb office"

    assert_text "Cb office was successfully created"
    click_on "Back"
  end

  test "updating a Cb office" do
    visit cb_offices_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @cb_office.address1
    fill_in "Address2", with: @cb_office.address2
    fill_in "City", with: @cb_office.city
    fill_in "Country code", with: @cb_office.country_code
    fill_in "Description", with: @cb_office.description
    fill_in "Latitude", with: @cb_office.latitude
    fill_in "Longitude", with: @cb_office.longitude
    fill_in "Object", with: @cb_office.object_id
    fill_in "Office", with: @cb_office.office_id
    fill_in "Region", with: @cb_office.region
    fill_in "State code", with: @cb_office.state_code
    fill_in "Zip code", with: @cb_office.zip_code
    click_on "Update Cb office"

    assert_text "Cb office was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb office" do
    visit cb_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb office was successfully destroyed"
  end
end
