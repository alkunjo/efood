require 'test_helper'

class PackageCateringsControllerTest < ActionController::TestCase
  setup do
    @package_catering = package_caterings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_caterings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_catering" do
    assert_difference('PackageCatering.count') do
      post :create, package_catering: { additional: @package_catering.additional, package_id: @package_catering.package_id, price: @package_catering.price }
    end

    assert_redirected_to package_catering_path(assigns(:package_catering))
  end

  test "should show package_catering" do
    get :show, id: @package_catering
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_catering
    assert_response :success
  end

  test "should update package_catering" do
    patch :update, id: @package_catering, package_catering: { additional: @package_catering.additional, package_id: @package_catering.package_id, price: @package_catering.price }
    assert_redirected_to package_catering_path(assigns(:package_catering))
  end

  test "should destroy package_catering" do
    assert_difference('PackageCatering.count', -1) do
      delete :destroy, id: @package_catering
    end

    assert_redirected_to package_caterings_path
  end
end
