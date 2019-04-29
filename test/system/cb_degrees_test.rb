require "application_system_test_case"

class CbDegreesTest < ApplicationSystemTestCase
  setup do
    @cb_degree = cb_degrees(:one)
  end

  test "visiting the index" do
    visit cb_degrees_url
    assert_selector "h1", text: "Cb Degrees"
  end

  test "creating a Cb degree" do
    visit cb_degrees_url
    click_on "New Cb Degree"

    fill_in "Degree type", with: @cb_degree.degree_type
    fill_in "Graduated at", with: @cb_degree.graduated_at
    fill_in "Institution", with: @cb_degree.institution
    fill_in "Object", with: @cb_degree.object_id
    fill_in "Subject", with: @cb_degree.subject
    click_on "Create Cb degree"

    assert_text "Cb degree was successfully created"
    click_on "Back"
  end

  test "updating a Cb degree" do
    visit cb_degrees_url
    click_on "Edit", match: :first

    fill_in "Degree type", with: @cb_degree.degree_type
    fill_in "Graduated at", with: @cb_degree.graduated_at
    fill_in "Institution", with: @cb_degree.institution
    fill_in "Object", with: @cb_degree.object_id
    fill_in "Subject", with: @cb_degree.subject
    click_on "Update Cb degree"

    assert_text "Cb degree was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb degree" do
    visit cb_degrees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb degree was successfully destroyed"
  end
end
