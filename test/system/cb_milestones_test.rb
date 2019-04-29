require "application_system_test_case"

class CbMilestonesTest < ApplicationSystemTestCase
  setup do
    @cb_milestone = cb_milestones(:one)
  end

  test "visiting the index" do
    visit cb_milestones_url
    assert_selector "h1", text: "Cb Milestones"
  end

  test "creating a Cb milestone" do
    visit cb_milestones_url
    click_on "New Cb Milestone"

    fill_in "Description", with: @cb_milestone.description
    fill_in "Milestone at", with: @cb_milestone.milestone_at
    fill_in "Milestone code", with: @cb_milestone.milestone_code
    fill_in "Object", with: @cb_milestone.object_id
    fill_in "Source description", with: @cb_milestone.source_description
    fill_in "Source url", with: @cb_milestone.source_url
    click_on "Create Cb milestone"

    assert_text "Cb milestone was successfully created"
    click_on "Back"
  end

  test "updating a Cb milestone" do
    visit cb_milestones_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cb_milestone.description
    fill_in "Milestone at", with: @cb_milestone.milestone_at
    fill_in "Milestone code", with: @cb_milestone.milestone_code
    fill_in "Object", with: @cb_milestone.object_id
    fill_in "Source description", with: @cb_milestone.source_description
    fill_in "Source url", with: @cb_milestone.source_url
    click_on "Update Cb milestone"

    assert_text "Cb milestone was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb milestone" do
    visit cb_milestones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb milestone was successfully destroyed"
  end
end
