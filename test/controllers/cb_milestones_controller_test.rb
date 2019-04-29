require 'test_helper'

class CbMilestonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_milestone = cb_milestones(:one)
  end

  test "should get index" do
    get cb_milestones_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_milestone_url
    assert_response :success
  end

  test "should create cb_milestone" do
    assert_difference('CbMilestone.count') do
      post cb_milestones_url, params: { cb_milestone: { description: @cb_milestone.description, milestone_at: @cb_milestone.milestone_at, milestone_code: @cb_milestone.milestone_code, object_id: @cb_milestone.object_id, source_description: @cb_milestone.source_description, source_url: @cb_milestone.source_url } }
    end

    assert_redirected_to cb_milestone_url(CbMilestone.last)
  end

  test "should show cb_milestone" do
    get cb_milestone_url(@cb_milestone)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_milestone_url(@cb_milestone)
    assert_response :success
  end

  test "should update cb_milestone" do
    patch cb_milestone_url(@cb_milestone), params: { cb_milestone: { description: @cb_milestone.description, milestone_at: @cb_milestone.milestone_at, milestone_code: @cb_milestone.milestone_code, object_id: @cb_milestone.object_id, source_description: @cb_milestone.source_description, source_url: @cb_milestone.source_url } }
    assert_redirected_to cb_milestone_url(@cb_milestone)
  end

  test "should destroy cb_milestone" do
    assert_difference('CbMilestone.count', -1) do
      delete cb_milestone_url(@cb_milestone)
    end

    assert_redirected_to cb_milestones_url
  end
end
