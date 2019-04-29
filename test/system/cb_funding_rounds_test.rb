require "application_system_test_case"

class CbFundingRoundsTest < ApplicationSystemTestCase
  setup do
    @cb_funding_round = cb_funding_rounds(:one)
  end

  test "visiting the index" do
    visit cb_funding_rounds_url
    assert_selector "h1", text: "Cb Funding Rounds"
  end

  test "creating a Cb funding round" do
    visit cb_funding_rounds_url
    click_on "New Cb Funding Round"

    fill_in "Created by", with: @cb_funding_round.created_by
    fill_in "Funded at", with: @cb_funding_round.funded_at
    fill_in "Funding round code", with: @cb_funding_round.funding_round_code
    fill_in "Funding round", with: @cb_funding_round.funding_round_id
    fill_in "Funding round type", with: @cb_funding_round.funding_round_type
    fill_in "Is first round", with: @cb_funding_round.is_first_round
    fill_in "Is last round", with: @cb_funding_round.is_last_round
    fill_in "Object", with: @cb_funding_round.object_id
    fill_in "Participants", with: @cb_funding_round.participants
    fill_in "Post money currency code", with: @cb_funding_round.post_money_currency_code
    fill_in "Post money valuation", with: @cb_funding_round.post_money_valuation
    fill_in "Post money valuation usd", with: @cb_funding_round.post_money_valuation_usd
    fill_in "Pre money currency code", with: @cb_funding_round.pre_money_currency_code
    fill_in "Pre money valuation", with: @cb_funding_round.pre_money_valuation
    fill_in "Pre money valuation usd", with: @cb_funding_round.pre_money_valuation_usd
    fill_in "Raised amount", with: @cb_funding_round.raised_amount
    fill_in "Raised amount usd", with: @cb_funding_round.raised_amount_usd
    fill_in "Raised currency code", with: @cb_funding_round.raised_currency_code
    fill_in "Source description", with: @cb_funding_round.source_description
    fill_in "Source url", with: @cb_funding_round.source_url
    click_on "Create Cb funding round"

    assert_text "Cb funding round was successfully created"
    click_on "Back"
  end

  test "updating a Cb funding round" do
    visit cb_funding_rounds_url
    click_on "Edit", match: :first

    fill_in "Created by", with: @cb_funding_round.created_by
    fill_in "Funded at", with: @cb_funding_round.funded_at
    fill_in "Funding round code", with: @cb_funding_round.funding_round_code
    fill_in "Funding round", with: @cb_funding_round.funding_round_id
    fill_in "Funding round type", with: @cb_funding_round.funding_round_type
    fill_in "Is first round", with: @cb_funding_round.is_first_round
    fill_in "Is last round", with: @cb_funding_round.is_last_round
    fill_in "Object", with: @cb_funding_round.object_id
    fill_in "Participants", with: @cb_funding_round.participants
    fill_in "Post money currency code", with: @cb_funding_round.post_money_currency_code
    fill_in "Post money valuation", with: @cb_funding_round.post_money_valuation
    fill_in "Post money valuation usd", with: @cb_funding_round.post_money_valuation_usd
    fill_in "Pre money currency code", with: @cb_funding_round.pre_money_currency_code
    fill_in "Pre money valuation", with: @cb_funding_round.pre_money_valuation
    fill_in "Pre money valuation usd", with: @cb_funding_round.pre_money_valuation_usd
    fill_in "Raised amount", with: @cb_funding_round.raised_amount
    fill_in "Raised amount usd", with: @cb_funding_round.raised_amount_usd
    fill_in "Raised currency code", with: @cb_funding_round.raised_currency_code
    fill_in "Source description", with: @cb_funding_round.source_description
    fill_in "Source url", with: @cb_funding_round.source_url
    click_on "Update Cb funding round"

    assert_text "Cb funding round was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb funding round" do
    visit cb_funding_rounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb funding round was successfully destroyed"
  end
end
