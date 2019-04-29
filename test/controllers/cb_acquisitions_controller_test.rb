require 'test_helper'

class CbAcquisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_acquisition = cb_acquisitions(:one)
  end

  test "should get index" do
    get cb_acquisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_acquisition_url
    assert_response :success
  end

  test "should create cb_acquisition" do
    assert_difference('CbAcquisition.count') do
      post cb_acquisitions_url, params: { cb_acquisition: { acquired_at: @cb_acquisition.acquired_at, acquired_object_id: @cb_acquisition.acquired_object_id, acquiring_object_id: @cb_acquisition.acquiring_object_id, acquisition_id: @cb_acquisition.acquisition_id, price_amount: @cb_acquisition.price_amount, price_currency_code: @cb_acquisition.price_currency_code, source_description: @cb_acquisition.source_description, source_url: @cb_acquisition.source_url, term_code: @cb_acquisition.term_code } }
    end

    assert_redirected_to cb_acquisition_url(CbAcquisition.last)
  end

  test "should show cb_acquisition" do
    get cb_acquisition_url(@cb_acquisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_acquisition_url(@cb_acquisition)
    assert_response :success
  end

  test "should update cb_acquisition" do
    patch cb_acquisition_url(@cb_acquisition), params: { cb_acquisition: { acquired_at: @cb_acquisition.acquired_at, acquired_object_id: @cb_acquisition.acquired_object_id, acquiring_object_id: @cb_acquisition.acquiring_object_id, acquisition_id: @cb_acquisition.acquisition_id, price_amount: @cb_acquisition.price_amount, price_currency_code: @cb_acquisition.price_currency_code, source_description: @cb_acquisition.source_description, source_url: @cb_acquisition.source_url, term_code: @cb_acquisition.term_code } }
    assert_redirected_to cb_acquisition_url(@cb_acquisition)
  end

  test "should destroy cb_acquisition" do
    assert_difference('CbAcquisition.count', -1) do
      delete cb_acquisition_url(@cb_acquisition)
    end

    assert_redirected_to cb_acquisitions_url
  end
end
