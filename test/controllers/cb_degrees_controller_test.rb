require 'test_helper'

class CbDegreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_degree = cb_degrees(:one)
  end

  test "should get index" do
    get cb_degrees_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_degree_url
    assert_response :success
  end

  test "should create cb_degree" do
    assert_difference('CbDegree.count') do
      post cb_degrees_url, params: { cb_degree: { degree_type: @cb_degree.degree_type, graduated_at: @cb_degree.graduated_at, institution: @cb_degree.institution, object_id: @cb_degree.object_id, subject: @cb_degree.subject } }
    end

    assert_redirected_to cb_degree_url(CbDegree.last)
  end

  test "should show cb_degree" do
    get cb_degree_url(@cb_degree)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_degree_url(@cb_degree)
    assert_response :success
  end

  test "should update cb_degree" do
    patch cb_degree_url(@cb_degree), params: { cb_degree: { degree_type: @cb_degree.degree_type, graduated_at: @cb_degree.graduated_at, institution: @cb_degree.institution, object_id: @cb_degree.object_id, subject: @cb_degree.subject } }
    assert_redirected_to cb_degree_url(@cb_degree)
  end

  test "should destroy cb_degree" do
    assert_difference('CbDegree.count', -1) do
      delete cb_degree_url(@cb_degree)
    end

    assert_redirected_to cb_degrees_url
  end
end
