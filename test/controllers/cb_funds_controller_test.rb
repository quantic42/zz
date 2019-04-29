require 'test_helper'

class CbFundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_fund = cb_funds(:one)
  end

  test "should get index" do
    get cb_funds_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_fund_url
    assert_response :success
  end

  test "should create cb_fund" do
    assert_difference('CbFund.count') do
      post cb_funds_url, params: { cb_fund: { fund_id: @cb_fund.fund_id, funded_at: @cb_fund.funded_at, name: @cb_fund.name, object_id: @cb_fund.object_id, raised_amount: @cb_fund.raised_amount, raised_currency_code: @cb_fund.raised_currency_code, source_description: @cb_fund.source_description, source_url: @cb_fund.source_url } }
    end

    assert_redirected_to cb_fund_url(CbFund.last)
  end

  test "should show cb_fund" do
    get cb_fund_url(@cb_fund)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_fund_url(@cb_fund)
    assert_response :success
  end

  test "should update cb_fund" do
    patch cb_fund_url(@cb_fund), params: { cb_fund: { fund_id: @cb_fund.fund_id, funded_at: @cb_fund.funded_at, name: @cb_fund.name, object_id: @cb_fund.object_id, raised_amount: @cb_fund.raised_amount, raised_currency_code: @cb_fund.raised_currency_code, source_description: @cb_fund.source_description, source_url: @cb_fund.source_url } }
    assert_redirected_to cb_fund_url(@cb_fund)
  end

  test "should destroy cb_fund" do
    assert_difference('CbFund.count', -1) do
      delete cb_fund_url(@cb_fund)
    end

    assert_redirected_to cb_funds_url
  end
end
