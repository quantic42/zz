require 'test_helper'

class CbObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_object = cb_objects(:one)
  end

  test "should get index" do
    get cb_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_object_url
    assert_response :success
  end

  test "should create cb_object" do
    assert_difference('CbObject.count') do
      post cb_objects_url, params: { cb_object: { category_code: @cb_object.category_code, city: @cb_object.city, closed_at: @cb_object.closed_at, country_code: @cb_object.country_code, created_by: @cb_object.created_by, description: @cb_object.description, domain: @cb_object.domain, entity_id: @cb_object.entity_id, entity_type: @cb_object.entity_type, first_funding_at: @cb_object.first_funding_at, first_investment_at: @cb_object.first_investment_at, first_milestone_at: @cb_object.first_milestone_at, founded_at: @cb_object.founded_at, funding_rounds: @cb_object.funding_rounds, funding_total_usd: @cb_object.funding_total_usd, homepage_url: @cb_object.homepage_url, invested_companies: @cb_object.invested_companies, investment_rounds: @cb_object.investment_rounds, last_funding_at: @cb_object.last_funding_at, last_investment_at: @cb_object.last_investment_at, last_milestone_at: @cb_object.last_milestone_at, logo_height: @cb_object.logo_height, logo_url: @cb_object.logo_url, logo_width: @cb_object.logo_width, milestones: @cb_object.milestones, name: @cb_object.name, normalized_name: @cb_object.normalized_name, overview: @cb_object.overview, parent_id: @cb_object.parent_id, permalink: @cb_object.permalink, region: @cb_object.region, relationships: @cb_object.relationships, short_description: @cb_object.short_description, state_code: @cb_object.state_code, status: @cb_object.status, tag_list: @cb_object.tag_list, twitter_username: @cb_object.twitter_username } }
    end

    assert_redirected_to cb_object_url(CbObject.last)
  end

  test "should show cb_object" do
    get cb_object_url(@cb_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_object_url(@cb_object)
    assert_response :success
  end

  test "should update cb_object" do
    patch cb_object_url(@cb_object), params: { cb_object: { category_code: @cb_object.category_code, city: @cb_object.city, closed_at: @cb_object.closed_at, country_code: @cb_object.country_code, created_by: @cb_object.created_by, description: @cb_object.description, domain: @cb_object.domain, entity_id: @cb_object.entity_id, entity_type: @cb_object.entity_type, first_funding_at: @cb_object.first_funding_at, first_investment_at: @cb_object.first_investment_at, first_milestone_at: @cb_object.first_milestone_at, founded_at: @cb_object.founded_at, funding_rounds: @cb_object.funding_rounds, funding_total_usd: @cb_object.funding_total_usd, homepage_url: @cb_object.homepage_url, invested_companies: @cb_object.invested_companies, investment_rounds: @cb_object.investment_rounds, last_funding_at: @cb_object.last_funding_at, last_investment_at: @cb_object.last_investment_at, last_milestone_at: @cb_object.last_milestone_at, logo_height: @cb_object.logo_height, logo_url: @cb_object.logo_url, logo_width: @cb_object.logo_width, milestones: @cb_object.milestones, name: @cb_object.name, normalized_name: @cb_object.normalized_name, overview: @cb_object.overview, parent_id: @cb_object.parent_id, permalink: @cb_object.permalink, region: @cb_object.region, relationships: @cb_object.relationships, short_description: @cb_object.short_description, state_code: @cb_object.state_code, status: @cb_object.status, tag_list: @cb_object.tag_list, twitter_username: @cb_object.twitter_username } }
    assert_redirected_to cb_object_url(@cb_object)
  end

  test "should destroy cb_object" do
    assert_difference('CbObject.count', -1) do
      delete cb_object_url(@cb_object)
    end

    assert_redirected_to cb_objects_url
  end
end
