require 'test_helper'

class CbInvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_investment = cb_investments(:one)
  end

  test "should get index" do
    get cb_investments_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_investment_url
    assert_response :success
  end

  test "should create cb_investment" do
    assert_difference('CbInvestment.count') do
      post cb_investments_url, params: { cb_investment: { funded_object_id: @cb_investment.funded_object_id, funding_round_id: @cb_investment.funding_round_id, investor_object_id: @cb_investment.investor_object_id } }
    end

    assert_redirected_to cb_investment_url(CbInvestment.last)
  end

  test "should show cb_investment" do
    get cb_investment_url(@cb_investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_investment_url(@cb_investment)
    assert_response :success
  end

  test "should update cb_investment" do
    patch cb_investment_url(@cb_investment), params: { cb_investment: { funded_object_id: @cb_investment.funded_object_id, funding_round_id: @cb_investment.funding_round_id, investor_object_id: @cb_investment.investor_object_id } }
    assert_redirected_to cb_investment_url(@cb_investment)
  end

  test "should destroy cb_investment" do
    assert_difference('CbInvestment.count', -1) do
      delete cb_investment_url(@cb_investment)
    end

    assert_redirected_to cb_investments_url
  end
end
