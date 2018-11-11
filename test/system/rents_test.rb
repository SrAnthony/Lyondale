require "application_system_test_case"

class RentsTest < ApplicationSystemTestCase
  setup do
    @rent = rents(:one)
  end

  test "visiting the index" do
    visit rents_url
    assert_selector "h1", text: "Rents"
  end

  test "creating a Rent" do
    visit rents_url
    click_on "New Rent"

    fill_in "Customer", with: @rent.customer_id
    fill_in "End Date", with: @rent.end_date
    fill_in "Property", with: @rent.property_id
    fill_in "Start Date", with: @rent.start_date
    fill_in "Value", with: @rent.value
    click_on "Create Rent"

    assert_text "Rent was successfully created"
    click_on "Back"
  end

  test "updating a Rent" do
    visit rents_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @rent.customer_id
    fill_in "End Date", with: @rent.end_date
    fill_in "Property", with: @rent.property_id
    fill_in "Start Date", with: @rent.start_date
    fill_in "Value", with: @rent.value
    click_on "Update Rent"

    assert_text "Rent was successfully updated"
    click_on "Back"
  end

  test "destroying a Rent" do
    visit rents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rent was successfully destroyed"
  end
end
