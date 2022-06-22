require "application_system_test_case"

class MeetingLocationsTest < ApplicationSystemTestCase
  setup do
    @meeting_location = meeting_locations(:one)
  end

  test "visiting the index" do
    visit meeting_locations_url
    assert_selector "h1", text: "Meeting locations"
  end

  test "should create meeting location" do
    visit meeting_locations_url
    click_on "New meeting location"

    fill_in "Address", with: @meeting_location.address
    fill_in "City", with: @meeting_location.city
    fill_in "Lat", with: @meeting_location.lat
    fill_in "Lng", with: @meeting_location.lng
    fill_in "Locationradius", with: @meeting_location.locationRadius
    fill_in "Name", with: @meeting_location.name
    fill_in "Province", with: @meeting_location.province
    click_on "Create Meeting location"

    assert_text "Meeting location was successfully created"
    click_on "Back"
  end

  test "should update Meeting location" do
    visit meeting_location_url(@meeting_location)
    click_on "Edit this meeting location", match: :first

    fill_in "Address", with: @meeting_location.address
    fill_in "City", with: @meeting_location.city
    fill_in "Lat", with: @meeting_location.lat
    fill_in "Lng", with: @meeting_location.lng
    fill_in "Locationradius", with: @meeting_location.locationRadius
    fill_in "Name", with: @meeting_location.name
    fill_in "Province", with: @meeting_location.province
    click_on "Update Meeting location"

    assert_text "Meeting location was successfully updated"
    click_on "Back"
  end

  test "should destroy Meeting location" do
    visit meeting_location_url(@meeting_location)
    click_on "Destroy this meeting location", match: :first

    assert_text "Meeting location was successfully destroyed"
  end
end
