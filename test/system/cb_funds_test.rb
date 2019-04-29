require "application_system_test_case"

class CbFundsTest < ApplicationSystemTestCase
  setup do
    @cb_fund = cb_funds(:one)
  end

  test "visiting the index" do
    visit cb_funds_url
    assert_selector "h1", text: "Cb Funds"
  end

  test "creating a Cb fund" do
    visit cb_funds_url
    click_on "New Cb Fund"

    fill_in "Fund", with: @cb_fund.fund_id
    fill_in "Funded at", with: @cb_fund.funded_at
    fill_in "Name", with: @cb_fund.name
    fill_in "Object", with: @cb_fund.object_id
    fill_in "Raised amount", with: @cb_fund.raised_amount
    fill_in "Raised currency code", with: @cb_fund.raised_currency_code
    fill_in "Source description", with: @cb_fund.source_description
    fill_in "Source url", with: @cb_fund.source_url
    click_on "Create Cb fund"

    assert_text "Cb fund was successfully created"
    click_on "Back"
  end

  test "updating a Cb fund" do
    visit cb_funds_url
    click_on "Edit", match: :first

    fill_in "Fund", with: @cb_fund.fund_id
    fill_in "Funded at", with: @cb_fund.funded_at
    fill_in "Name", with: @cb_fund.name
    fill_in "Object", with: @cb_fund.object_id
    fill_in "Raised amount", with: @cb_fund.raised_amount
    fill_in "Raised currency code", with: @cb_fund.raised_currency_code
    fill_in "Source description", with: @cb_fund.source_description
    fill_in "Source url", with: @cb_fund.source_url
    click_on "Update Cb fund"

    assert_text "Cb fund was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb fund" do
    visit cb_funds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb fund was successfully destroyed"
  end
end
