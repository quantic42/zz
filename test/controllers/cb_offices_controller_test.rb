require 'test_helper'

class CbOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_office = cb_offices(:one)
  end

  test "should get index" do
    get cb_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_office_url
    assert_response :success
  end

  test "should create cb_office" do
    assert_difference('CbOffice.count') do
      post cb_offices_url, params: { cb_office: { address1: @cb_office.address1, address2: @cb_office.address2, city: @cb_office.city, country_code: @cb_office.country_code, description: @cb_office.description, latitude: @cb_office.latitude, longitude: @cb_office.longitude, object_id: @cb_office.object_id, office_id: @cb_office.office_id, region: @cb_office.region, state_code: @cb_office.state_code, zip_code: @cb_office.zip_code } }
    end

    assert_redirected_to cb_office_url(CbOffice.last)
  end

  test "should show cb_office" do
    get cb_office_url(@cb_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_office_url(@cb_office)
    assert_response :success
  end

  test "should update cb_office" do
    patch cb_office_url(@cb_office), params: { cb_office: { address1: @cb_office.address1, address2: @cb_office.address2, city: @cb_office.city, country_code: @cb_office.country_code, description: @cb_office.description, latitude: @cb_office.latitude, longitude: @cb_office.longitude, object_id: @cb_office.object_id, office_id: @cb_office.office_id, region: @cb_office.region, state_code: @cb_office.state_code, zip_code: @cb_office.zip_code } }
    assert_redirected_to cb_office_url(@cb_office)
  end

  test "should destroy cb_office" do
    assert_difference('CbOffice.count', -1) do
      delete cb_office_url(@cb_office)
    end

    assert_redirected_to cb_offices_url
  end
end
