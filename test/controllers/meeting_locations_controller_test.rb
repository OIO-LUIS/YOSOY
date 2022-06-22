require "test_helper"

class MeetingLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_location = meeting_locations(:one)
  end

  test "should get index" do
    get meeting_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_location_url
    assert_response :success
  end

  test "should create meeting_location" do
    assert_difference("MeetingLocation.count") do
      post meeting_locations_url, params: { meeting_location: { address: @meeting_location.address, city: @meeting_location.city, lat: @meeting_location.lat, lng: @meeting_location.lng, locationRadius: @meeting_location.locationRadius, name: @meeting_location.name, province: @meeting_location.province } }
    end

    assert_redirected_to meeting_location_url(MeetingLocation.last)
  end

  test "should show meeting_location" do
    get meeting_location_url(@meeting_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_location_url(@meeting_location)
    assert_response :success
  end

  test "should update meeting_location" do
    patch meeting_location_url(@meeting_location), params: { meeting_location: { address: @meeting_location.address, city: @meeting_location.city, lat: @meeting_location.lat, lng: @meeting_location.lng, locationRadius: @meeting_location.locationRadius, name: @meeting_location.name, province: @meeting_location.province } }
    assert_redirected_to meeting_location_url(@meeting_location)
  end

  test "should destroy meeting_location" do
    assert_difference("MeetingLocation.count", -1) do
      delete meeting_location_url(@meeting_location)
    end

    assert_redirected_to meeting_locations_url
  end
end
