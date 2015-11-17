require 'test_helper'

class FoodCateringsControllerTest < ActionController::TestCase
  setup do
    @food_catering = food_caterings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_caterings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_catering" do
    assert_difference('FoodCatering.count') do
      post :create, food_catering: { additional: @food_catering.additional, food_id: @food_catering.food_id, price: @food_catering.price }
    end

    assert_redirected_to food_catering_path(assigns(:food_catering))
  end

  test "should show food_catering" do
    get :show, id: @food_catering
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_catering
    assert_response :success
  end

  test "should update food_catering" do
    patch :update, id: @food_catering, food_catering: { additional: @food_catering.additional, food_id: @food_catering.food_id, price: @food_catering.price }
    assert_redirected_to food_catering_path(assigns(:food_catering))
  end

  test "should destroy food_catering" do
    assert_difference('FoodCatering.count', -1) do
      delete :destroy, id: @food_catering
    end

    assert_redirected_to food_caterings_path
  end
end
