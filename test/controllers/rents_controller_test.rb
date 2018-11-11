require 'test_helper'

class RentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent = rents(:one)
  end

  test "should get index" do
    get rents_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_url
    assert_response :success
  end

  test "should create rent" do
    assert_difference('Rent.count') do
      post rents_url, params: { rent: { customer_id: @rent.customer_id, end_date: @rent.end_date, property_id: @rent.property_id, start_date: @rent.start_date, value: @rent.value } }
    end

    assert_redirected_to rent_url(Rent.last)
  end

  test "should show rent" do
    get rent_url(@rent)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_url(@rent)
    assert_response :success
  end

  test "should update rent" do
    patch rent_url(@rent), params: { rent: { customer_id: @rent.customer_id, end_date: @rent.end_date, property_id: @rent.property_id, start_date: @rent.start_date, value: @rent.value } }
    assert_redirected_to rent_url(@rent)
  end

  test "should destroy rent" do
    assert_difference('Rent.count', -1) do
      delete rent_url(@rent)
    end

    assert_redirected_to rents_url
  end
end
