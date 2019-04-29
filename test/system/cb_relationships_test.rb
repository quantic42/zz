require "application_system_test_case"

class CbRelationshipsTest < ApplicationSystemTestCase
  setup do
    @cb_relationship = cb_relationships(:one)
  end

  test "visiting the index" do
    visit cb_relationships_url
    assert_selector "h1", text: "Cb Relationships"
  end

  test "creating a Cb relationship" do
    visit cb_relationships_url
    click_on "New Cb Relationship"

    fill_in "End at", with: @cb_relationship.end_at
    fill_in "Is past", with: @cb_relationship.is_past
    fill_in "Person object", with: @cb_relationship.person_object_id
    fill_in "Relationship", with: @cb_relationship.relationship_id
    fill_in "Relationship object", with: @cb_relationship.relationship_object_id
    fill_in "Sequence", with: @cb_relationship.sequence
    fill_in "Start at", with: @cb_relationship.start_at
    fill_in "Title", with: @cb_relationship.title
    click_on "Create Cb relationship"

    assert_text "Cb relationship was successfully created"
    click_on "Back"
  end

  test "updating a Cb relationship" do
    visit cb_relationships_url
    click_on "Edit", match: :first

    fill_in "End at", with: @cb_relationship.end_at
    fill_in "Is past", with: @cb_relationship.is_past
    fill_in "Person object", with: @cb_relationship.person_object_id
    fill_in "Relationship", with: @cb_relationship.relationship_id
    fill_in "Relationship object", with: @cb_relationship.relationship_object_id
    fill_in "Sequence", with: @cb_relationship.sequence
    fill_in "Start at", with: @cb_relationship.start_at
    fill_in "Title", with: @cb_relationship.title
    click_on "Update Cb relationship"

    assert_text "Cb relationship was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb relationship" do
    visit cb_relationships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb relationship was successfully destroyed"
  end
end
