require "application_system_test_case"

class CbObjectsTest < ApplicationSystemTestCase
  setup do
    @cb_object = cb_objects(:one)
  end

  test "visiting the index" do
    visit cb_objects_url
    assert_selector "h1", text: "Cb Objects"
  end

  test "creating a Cb object" do
    visit cb_objects_url
    click_on "New Cb Object"

    fill_in "Category code", with: @cb_object.category_code
    fill_in "City", with: @cb_object.city
    fill_in "Closed at", with: @cb_object.closed_at
    fill_in "Country code", with: @cb_object.country_code
    fill_in "Created by", with: @cb_object.created_by
    fill_in "Description", with: @cb_object.description
    fill_in "Domain", with: @cb_object.domain
    fill_in "Entity", with: @cb_object.entity_id
    fill_in "Entity type", with: @cb_object.entity_type
    fill_in "First funding at", with: @cb_object.first_funding_at
    fill_in "First investment at", with: @cb_object.first_investment_at
    fill_in "First milestone at", with: @cb_object.first_milestone_at
    fill_in "Founded at", with: @cb_object.founded_at
    fill_in "Funding rounds", with: @cb_object.funding_rounds
    fill_in "Funding total usd", with: @cb_object.funding_total_usd
    fill_in "Homepage url", with: @cb_object.homepage_url
    fill_in "Invested companies", with: @cb_object.invested_companies
    fill_in "Investment rounds", with: @cb_object.investment_rounds
    fill_in "Last funding at", with: @cb_object.last_funding_at
    fill_in "Last investment at", with: @cb_object.last_investment_at
    fill_in "Last milestone at", with: @cb_object.last_milestone_at
    fill_in "Logo height", with: @cb_object.logo_height
    fill_in "Logo url", with: @cb_object.logo_url
    fill_in "Logo width", with: @cb_object.logo_width
    fill_in "Milestones", with: @cb_object.milestones
    fill_in "Name", with: @cb_object.name
    fill_in "Normalized name", with: @cb_object.normalized_name
    fill_in "Overview", with: @cb_object.overview
    fill_in "Parent", with: @cb_object.parent_id
    fill_in "Permalink", with: @cb_object.permalink
    fill_in "Region", with: @cb_object.region
    fill_in "Relationships", with: @cb_object.relationships
    fill_in "Short description", with: @cb_object.short_description
    fill_in "State code", with: @cb_object.state_code
    fill_in "Status", with: @cb_object.status
    fill_in "Tag list", with: @cb_object.tag_list
    fill_in "Twitter username", with: @cb_object.twitter_username
    click_on "Create Cb object"

    assert_text "Cb object was successfully created"
    click_on "Back"
  end

  test "updating a Cb object" do
    visit cb_objects_url
    click_on "Edit", match: :first

    fill_in "Category code", with: @cb_object.category_code
    fill_in "City", with: @cb_object.city
    fill_in "Closed at", with: @cb_object.closed_at
    fill_in "Country code", with: @cb_object.country_code
    fill_in "Created by", with: @cb_object.created_by
    fill_in "Description", with: @cb_object.description
    fill_in "Domain", with: @cb_object.domain
    fill_in "Entity", with: @cb_object.entity_id
    fill_in "Entity type", with: @cb_object.entity_type
    fill_in "First funding at", with: @cb_object.first_funding_at
    fill_in "First investment at", with: @cb_object.first_investment_at
    fill_in "First milestone at", with: @cb_object.first_milestone_at
    fill_in "Founded at", with: @cb_object.founded_at
    fill_in "Funding rounds", with: @cb_object.funding_rounds
    fill_in "Funding total usd", with: @cb_object.funding_total_usd
    fill_in "Homepage url", with: @cb_object.homepage_url
    fill_in "Invested companies", with: @cb_object.invested_companies
    fill_in "Investment rounds", with: @cb_object.investment_rounds
    fill_in "Last funding at", with: @cb_object.last_funding_at
    fill_in "Last investment at", with: @cb_object.last_investment_at
    fill_in "Last milestone at", with: @cb_object.last_milestone_at
    fill_in "Logo height", with: @cb_object.logo_height
    fill_in "Logo url", with: @cb_object.logo_url
    fill_in "Logo width", with: @cb_object.logo_width
    fill_in "Milestones", with: @cb_object.milestones
    fill_in "Name", with: @cb_object.name
    fill_in "Normalized name", with: @cb_object.normalized_name
    fill_in "Overview", with: @cb_object.overview
    fill_in "Parent", with: @cb_object.parent_id
    fill_in "Permalink", with: @cb_object.permalink
    fill_in "Region", with: @cb_object.region
    fill_in "Relationships", with: @cb_object.relationships
    fill_in "Short description", with: @cb_object.short_description
    fill_in "State code", with: @cb_object.state_code
    fill_in "Status", with: @cb_object.status
    fill_in "Tag list", with: @cb_object.tag_list
    fill_in "Twitter username", with: @cb_object.twitter_username
    click_on "Update Cb object"

    assert_text "Cb object was successfully updated"
    click_on "Back"
  end

  test "destroying a Cb object" do
    visit cb_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cb object was successfully destroyed"
  end
end
