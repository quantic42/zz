require 'test_helper'

class CbFundingRoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_funding_round = cb_funding_rounds(:one)
  end

  test "should get index" do
    get cb_funding_rounds_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_funding_round_url
    assert_response :success
  end

  test "should create cb_funding_round" do
    assert_difference('CbFundingRound.count') do
      post cb_funding_rounds_url, params: { cb_funding_round: { created_by: @cb_funding_round.created_by, funded_at: @cb_funding_round.funded_at, funding_round_code: @cb_funding_round.funding_round_code, funding_round_id: @cb_funding_round.funding_round_id, funding_round_type: @cb_funding_round.funding_round_type, is_first_round: @cb_funding_round.is_first_round, is_last_round: @cb_funding_round.is_last_round, object_id: @cb_funding_round.object_id, participants: @cb_funding_round.participants, post_money_currency_code: @cb_funding_round.post_money_currency_code, post_money_valuation: @cb_funding_round.post_money_valuation, post_money_valuation_usd: @cb_funding_round.post_money_valuation_usd, pre_money_currency_code: @cb_funding_round.pre_money_currency_code, pre_money_valuation: @cb_funding_round.pre_money_valuation, pre_money_valuation_usd: @cb_funding_round.pre_money_valuation_usd, raised_amount: @cb_funding_round.raised_amount, raised_amount_usd: @cb_funding_round.raised_amount_usd, raised_currency_code: @cb_funding_round.raised_currency_code, source_description: @cb_funding_round.source_description, source_url: @cb_funding_round.source_url } }
    end

    assert_redirected_to cb_funding_round_url(CbFundingRound.last)
  end

  test "should show cb_funding_round" do
    get cb_funding_round_url(@cb_funding_round)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_funding_round_url(@cb_funding_round)
    assert_response :success
  end

  test "should update cb_funding_round" do
    patch cb_funding_round_url(@cb_funding_round), params: { cb_funding_round: { created_by: @cb_funding_round.created_by, funded_at: @cb_funding_round.funded_at, funding_round_code: @cb_funding_round.funding_round_code, funding_round_id: @cb_funding_round.funding_round_id, funding_round_type: @cb_funding_round.funding_round_type, is_first_round: @cb_funding_round.is_first_round, is_last_round: @cb_funding_round.is_last_round, object_id: @cb_funding_round.object_id, participants: @cb_funding_round.participants, post_money_currency_code: @cb_funding_round.post_money_currency_code, post_money_valuation: @cb_funding_round.post_money_valuation, post_money_valuation_usd: @cb_funding_round.post_money_valuation_usd, pre_money_currency_code: @cb_funding_round.pre_money_currency_code, pre_money_valuation: @cb_funding_round.pre_money_valuation, pre_money_valuation_usd: @cb_funding_round.pre_money_valuation_usd, raised_amount: @cb_funding_round.raised_amount, raised_amount_usd: @cb_funding_round.raised_amount_usd, raised_currency_code: @cb_funding_round.raised_currency_code, source_description: @cb_funding_round.source_description, source_url: @cb_funding_round.source_url } }
    assert_redirected_to cb_funding_round_url(@cb_funding_round)
  end

  test "should destroy cb_funding_round" do
    assert_difference('CbFundingRound.count', -1) do
      delete cb_funding_round_url(@cb_funding_round)
    end

    assert_redirected_to cb_funding_rounds_url
  end
end
