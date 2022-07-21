require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Age group", with: @event.age_group
    fill_in "Category", with: @event.category
    fill_in "Comments", with: @event.comments
    check "Community benefit" if @event.community_benefit
    fill_in "Community servicescore", with: @event.community_serviceScore
    fill_in "Description", with: @event.description
    check "Is artist" if @event.is_artist
    fill_in "Location address", with: @event.location_address
    fill_in "Location city", with: @event.location_city
    fill_in "Location lat", with: @event.location_lat
    fill_in "Location lng", with: @event.location_lng
    fill_in "Name", with: @event.name
    check "Non profit" if @event.non_profit
    fill_in "Overall score", with: @event.overall_score
    fill_in "Social contribution", with: @event.social_contribution
    fill_in "Tags", with: @event.tags
    fill_in "Target group", with: @event.target_group
    fill_in "Ticket cost", with: @event.ticket_cost
    fill_in "Ticket quantity", with: @event.ticket_quantity
    fill_in "Total cost", with: @event.total_cost
    fill_in "Type", with: @event.type
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Age group", with: @event.age_group
    fill_in "Category", with: @event.category
    fill_in "Comments", with: @event.comments
    check "Community benefit" if @event.community_benefit
    fill_in "Community servicescore", with: @event.community_serviceScore
    fill_in "Description", with: @event.description
    check "Is artist" if @event.is_artist
    fill_in "Location address", with: @event.location_address
    fill_in "Location city", with: @event.location_city
    fill_in "Location lat", with: @event.location_lat
    fill_in "Location lng", with: @event.location_lng
    fill_in "Name", with: @event.name
    check "Non profit" if @event.non_profit
    fill_in "Overall score", with: @event.overall_score
    fill_in "Social contribution", with: @event.social_contribution
    fill_in "Tags", with: @event.tags
    fill_in "Target group", with: @event.target_group
    fill_in "Ticket cost", with: @event.ticket_cost
    fill_in "Ticket quantity", with: @event.ticket_quantity
    fill_in "Total cost", with: @event.total_cost
    fill_in "Type", with: @event.type
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
