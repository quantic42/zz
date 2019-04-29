require "application_system_test_case"

class CbPeopleTest < ApplicationSystemTestCase
  setup do
    @cb_person = cb_people(:one)
  end

  test "visiting the index" do
    visit cb_people_url
    assert_selector "h1", text: "Cb People"
  end

  test "creating a Cb person" do
    visit cb_people_url
    click_on "New Cb Person"

    fill_in "Affiliation name", with: @cb_person.affiliation_name
    fill_in "Birthplace", with: @cb_person.birthplace
    fill_in "First name", with: @cb_person.first_name
    fill_in "Last name", with: @cb_person.last_name
    fill_in "Object", with: @cb_person.object_id
    click_on "Create Cb person"

    assert_text "Cb person was successfully created"
    click_on "Back"
  end

  test "updating a Cb person" do
    visit cb_people_url
    click_on "Edit", match: :first

    fill_in "Affiliation name", with: @cb_person.affiliation_name
    fill_in "Birthplace", with: @cb_person.birthplace
    fill_in "First name", with: @cb_person.first_name
    fill_in "Last name", with: @cb_person.last_name
    fill_in "Object", with: @cb_person.object_id
    click_on "Update Cb person"

    assert_text "Cb person was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb person" do
    visit cb_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb person was successfully destroyed"
  end
end
