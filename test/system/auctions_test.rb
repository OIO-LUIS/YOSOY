require "application_system_test_case"

class AuctionsTest < ApplicationSystemTestCase
  setup do
    @auction = auctions(:one)
  end

  test "visiting the index" do
    visit auctions_url
    assert_selector "h1", text: "Auctions"
  end

  test "should create auction" do
    visit auctions_url
    click_on "New auction"

    fill_in "Category", with: @auction.category
    fill_in "Comments", with: @auction.comments
    fill_in "Condition", with: @auction.condition
    fill_in "Current bid", with: @auction.current_bid
    fill_in "Description", with: @auction.description
    fill_in "Dimensions", with: @auction.dimensions
    fill_in "Image", with: @auction.image
    fill_in "Initial bid", with: @auction.initial_bid
    fill_in "Manufacturer country", with: @auction.manufacturer_country
    fill_in "Name", with: @auction.name
    fill_in "Quantity", with: @auction.quantity
    fill_in "Sold bid", with: @auction.sold_bid
    fill_in "Type", with: @auction.type
    fill_in "Weight", with: @auction.weight
    click_on "Create Auction"

    assert_text "Auction was successfully created"
    click_on "Back"
  end

  test "should update Auction" do
    visit auction_url(@auction)
    click_on "Edit this auction", match: :first

    fill_in "Category", with: @auction.category
    fill_in "Comments", with: @auction.comments
    fill_in "Condition", with: @auction.condition
    fill_in "Current bid", with: @auction.current_bid
    fill_in "Description", with: @auction.description
    fill_in "Dimensions", with: @auction.dimensions
    fill_in "Image", with: @auction.image
    fill_in "Initial bid", with: @auction.initial_bid
    fill_in "Manufacturer country", with: @auction.manufacturer_country
    fill_in "Name", with: @auction.name
    fill_in "Quantity", with: @auction.quantity
    fill_in "Sold bid", with: @auction.sold_bid
    fill_in "Type", with: @auction.type
    fill_in "Weight", with: @auction.weight
    click_on "Update Auction"

    assert_text "Auction was successfully updated"
    click_on "Back"
  end

  test "should destroy Auction" do
    visit auction_url(@auction)
    click_on "Destroy this auction", match: :first

    assert_text "Auction was successfully destroyed"
  end
end
