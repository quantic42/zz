require "application_system_test_case"

class CbAcquisitionsTest < ApplicationSystemTestCase
  setup do
    @cb_acquisition = cb_acquisitions(:one)
  end

  test "visiting the index" do
    visit cb_acquisitions_url
    assert_selector "h1", text: "Cb Acquisitions"
  end

  test "creating a Cb acquisition" do
    visit cb_acquisitions_url
    click_on "New Cb Acquisition"

    fill_in "Acquired at", with: @cb_acquisition.acquired_at
    fill_in "Acquired object", with: @cb_acquisition.acquired_object_id
    fill_in "Acquiring object", with: @cb_acquisition.acquiring_object_id
    fill_in "Acquisition", with: @cb_acquisition.acquisition_id
    fill_in "Price amount", with: @cb_acquisition.price_amount
    fill_in "Price currency code", with: @cb_acquisition.price_currency_code
    fill_in "Source description", with: @cb_acquisition.source_description
    fill_in "Source url", with: @cb_acquisition.source_url
    fill_in "Term code", with: @cb_acquisition.term_code
    click_on "Create Cb acquisition"

    assert_text "Cb acquisition was successfully created"
    click_on "Back"
  end

  test "updating a Cb acquisition" do
    visit cb_acquisitions_url
    click_on "Edit", match: :first

    fill_in "Acquired at", with: @cb_acquisition.acquired_at
    fill_in "Acquired object", with: @cb_acquisition.acquired_object_id
    fill_in "Acquiring object", with: @cb_acquisition.acquiring_object_id
    fill_in "Acquisition", with: @cb_acquisition.acquisition_id
    fill_in "Price amount", with: @cb_acquisition.price_amount
    fill_in "Price currency code", with: @cb_acquisition.price_currency_code
    fill_in "Source description", with: @cb_acquisition.source_description
    fill_in "Source url", with: @cb_acquisition.source_url
    fill_in "Term code", with: @cb_acquisition.term_code
    click_on "Update Cb acquisition"

    assert_text "Cb acquisition was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb acquisition" do
    visit cb_acquisitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb acquisition was successfully destroyed"
  end
end
