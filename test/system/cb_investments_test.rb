require "application_system_test_case"

class CbInvestmentsTest < ApplicationSystemTestCase
  setup do
    @cb_investment = cb_investments(:one)
  end

  test "visiting the index" do
    visit cb_investments_url
    assert_selector "h1", text: "Cb Investments"
  end

  test "creating a Cb investment" do
    visit cb_investments_url
    click_on "New Cb Investment"

    fill_in "Funded object", with: @cb_investment.funded_object_id
    fill_in "Funding round", with: @cb_investment.funding_round_id
    fill_in "Investor object", with: @cb_investment.investor_object_id
    click_on "Create Cb investment"

    assert_text "Cb investment was successfully created"
    click_on "Back"
  end

  test "updating a Cb investment" do
    visit cb_investments_url
    click_on "Edit", match: :first

    fill_in "Funded object", with: @cb_investment.funded_object_id
    fill_in "Funding round", with: @cb_investment.funding_round_id
    fill_in "Investor object", with: @cb_investment.investor_object_id
    click_on "Update Cb investment"

    assert_text "Cb investment was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb investment" do
    visit cb_investments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb investment was successfully destroyed"
  end
end
