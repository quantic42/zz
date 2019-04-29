require 'test_helper'

class CbRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_relationship = cb_relationships(:one)
  end

  test "should get index" do
    get cb_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_relationship_url
    assert_response :success
  end

  test "should create cb_relationship" do
    assert_difference('CbRelationship.count') do
      post cb_relationships_url, params: { cb_relationship: { end_at: @cb_relationship.end_at, is_past: @cb_relationship.is_past, person_object_id: @cb_relationship.person_object_id, relationship_id: @cb_relationship.relationship_id, relationship_object_id: @cb_relationship.relationship_object_id, sequence: @cb_relationship.sequence, start_at: @cb_relationship.start_at, title: @cb_relationship.title } }
    end

    assert_redirected_to cb_relationship_url(CbRelationship.last)
  end

  test "should show cb_relationship" do
    get cb_relationship_url(@cb_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_relationship_url(@cb_relationship)
    assert_response :success
  end

  test "should update cb_relationship" do
    patch cb_relationship_url(@cb_relationship), params: { cb_relationship: { end_at: @cb_relationship.end_at, is_past: @cb_relationship.is_past, person_object_id: @cb_relationship.person_object_id, relationship_id: @cb_relationship.relationship_id, relationship_object_id: @cb_relationship.relationship_object_id, sequence: @cb_relationship.sequence, start_at: @cb_relationship.start_at, title: @cb_relationship.title } }
    assert_redirected_to cb_relationship_url(@cb_relationship)
  end

  test "should destroy cb_relationship" do
    assert_difference('CbRelationship.count', -1) do
      delete cb_relationship_url(@cb_relationship)
    end

    assert_redirected_to cb_relationships_url
  end
end
