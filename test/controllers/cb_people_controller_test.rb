require 'test_helper'

class CbPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cb_person = cb_people(:one)
  end

  test "should get index" do
    get cb_people_url
    assert_response :success
  end

  test "should get new" do
    get new_cb_person_url
    assert_response :success
  end

  test "should create cb_person" do
    assert_difference('CbPerson.count') do
      post cb_people_url, params: { cb_person: { affiliation_name: @cb_person.affiliation_name, birthplace: @cb_person.birthplace, first_name: @cb_person.first_name, last_name: @cb_person.last_name, object_id: @cb_person.object_id } }
    end

    assert_redirected_to cb_person_url(CbPerson.last)
  end

  test "should show cb_person" do
    get cb_person_url(@cb_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_cb_person_url(@cb_person)
    assert_response :success
  end

  test "should update cb_person" do
    patch cb_person_url(@cb_person), params: { cb_person: { affiliation_name: @cb_person.affiliation_name, birthplace: @cb_person.birthplace, first_name: @cb_person.first_name, last_name: @cb_person.last_name, object_id: @cb_person.object_id } }
    assert_redirected_to cb_person_url(@cb_person)
  end

  test "should destroy cb_person" do
    assert_difference('CbPerson.count', -1) do
      delete cb_person_url(@cb_person)
    end

    assert_redirected_to cb_people_url
  end
end
