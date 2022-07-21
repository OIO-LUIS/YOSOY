require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { age_group: @event.age_group, category: @event.category, comments: @event.comments, community_benefit: @event.community_benefit, community_serviceScore: @event.community_serviceScore, description: @event.description, is_artist: @event.is_artist, location_address: @event.location_address, location_city: @event.location_city, location_lat: @event.location_lat, location_lng: @event.location_lng, name: @event.name, non_profit: @event.non_profit, overall_score: @event.overall_score, social_contribution: @event.social_contribution, tags: @event.tags, target_group: @event.target_group, ticket_cost: @event.ticket_cost, ticket_quantity: @event.ticket_quantity, total_cost: @event.total_cost, type: @event.type } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { age_group: @event.age_group, category: @event.category, comments: @event.comments, community_benefit: @event.community_benefit, community_serviceScore: @event.community_serviceScore, description: @event.description, is_artist: @event.is_artist, location_address: @event.location_address, location_city: @event.location_city, location_lat: @event.location_lat, location_lng: @event.location_lng, name: @event.name, non_profit: @event.non_profit, overall_score: @event.overall_score, social_contribution: @event.social_contribution, tags: @event.tags, target_group: @event.target_group, ticket_cost: @event.ticket_cost, ticket_quantity: @event.ticket_quantity, total_cost: @event.total_cost, type: @event.type } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
