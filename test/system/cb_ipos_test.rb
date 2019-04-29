require "application_system_test_case"

class CbIposTest < ApplicationSystemTestCase
  setup do
    @cb_ipo = cb_ipos(:one)
  end

  test "visiting the index" do
    visit cb_ipos_url
    assert_selector "h1", text: "Cb Ipos"
  end

  test "creating a Cb ipo" do
    visit cb_ipos_url
    click_on "New Cb Ipo"

    fill_in "Ipo", with: @cb_ipo.ipo_id
    fill_in "Object", with: @cb_ipo.object_id
    fill_in "Public at", with: @cb_ipo.public_at
    fill_in "Raised amount", with: @cb_ipo.raised_amount
    fill_in "Raised currency code", with: @cb_ipo.raised_currency_code
    fill_in "Source description", with: @cb_ipo.source_description
    fill_in "Source url", with: @cb_ipo.source_url
    fill_in "Stock symbol", with: @cb_ipo.stock_symbol
    fill_in "Valuation amount", with: @cb_ipo.valuation_amount
    fill_in "Valuation currency code", with: @cb_ipo.valuation_currency_code
    click_on "Create Cb ipo"

    assert_text "Cb ipo was successfully created"
    click_on "Back"
  end

  test "updating a Cb ipo" do
    visit cb_ipos_url
    click_on "Edit", match: :first

    fill_in "Ipo", with: @cb_ipo.ipo_id
    fill_in "Object", with: @cb_ipo.object_id
    fill_in "Public at", with: @cb_ipo.public_at
    fill_in "Raised amount", with: @cb_ipo.raised_amount
    fill_in "Raised currency code", with: @cb_ipo.raised_currency_code
    fill_in "Source description", with: @cb_ipo.source_description
    fill_in "Source url", with: @cb_ipo.source_url
    fill_in "Stock symbol", with: @cb_ipo.stock_symbol
    fill_in "Valuation amount", with: @cb_ipo.valuation_amount
    fill_in "Valuation currency code", with: @cb_ipo.valuation_currency_code
    click_on "Update Cb ipo"

    assert_text "Cb ipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb ipo" do
    visit cb_ipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb ipo was successfully destroyed"
  end
end
