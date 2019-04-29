require 'test_helper'

class CbIposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_ipo = cb_ipos(:one)
  end

  test "should get index" do
    get cb_ipos_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_ipo_url
    assert_response :success
  end

  test "should create cb_ipo" do
    assert_difference('CbIpo.count') do
      post cb_ipos_url, params: { cb_ipo: { ipo_id: @cb_ipo.ipo_id, object_id: @cb_ipo.object_id, public_at: @cb_ipo.public_at, raised_amount: @cb_ipo.raised_amount, raised_currency_code: @cb_ipo.raised_currency_code, source_description: @cb_ipo.source_description, source_url: @cb_ipo.source_url, stock_symbol: @cb_ipo.stock_symbol, valuation_amount: @cb_ipo.valuation_amount, valuation_currency_code: @cb_ipo.valuation_currency_code } }
    end

    assert_redirected_to cb_ipo_url(CbIpo.last)
  end

  test "should show cb_ipo" do
    get cb_ipo_url(@cb_ipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_ipo_url(@cb_ipo)
    assert_response :success
  end

  test "should update cb_ipo" do
    patch cb_ipo_url(@cb_ipo), params: { cb_ipo: { ipo_id: @cb_ipo.ipo_id, object_id: @cb_ipo.object_id, public_at: @cb_ipo.public_at, raised_amount: @cb_ipo.raised_amount, raised_currency_code: @cb_ipo.raised_currency_code, source_description: @cb_ipo.source_description, source_url: @cb_ipo.source_url, stock_symbol: @cb_ipo.stock_symbol, valuation_amount: @cb_ipo.valuation_amount, valuation_currency_code: @cb_ipo.valuation_currency_code } }
    assert_redirected_to cb_ipo_url(@cb_ipo)
  end

  test "should destroy cb_ipo" do
    assert_difference('CbIpo.count', -1) do
      delete cb_ipo_url(@cb_ipo)
    end

    assert_redirected_to cb_ipos_url
  end
end
