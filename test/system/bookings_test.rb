require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Category", with: @booking.category
    fill_in "Comments", with: @booking.comments
    fill_in "Description", with: @booking.description
    fill_in "Image", with: @booking.image
    fill_in "Name", with: @booking.name
    fill_in "Reviews", with: @booking.reviews
    fill_in "Score", with: @booking.score
    fill_in "Type", with: @booking.type
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Category", with: @booking.category
    fill_in "Comments", with: @booking.comments
    fill_in "Description", with: @booking.description
    fill_in "Image", with: @booking.image
    fill_in "Name", with: @booking.name
    fill_in "Reviews", with: @booking.reviews
    fill_in "Score", with: @booking.score
    fill_in "Type", with: @booking.type
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
