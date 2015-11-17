require 'test_helper'

class PackageDetailsControllerTest < ActionController::TestCase
  setup do
    @package_detail = package_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_detail" do
    assert_difference('PackageDetail.count') do
      post :create, package_detail: { package_id: @package_detail.package_id }
    end

    assert_redirected_to package_detail_path(assigns(:package_detail))
  end

  test "should show package_detail" do
    get :show, id: @package_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_detail
    assert_response :success
  end

  test "should update package_detail" do
    patch :update, id: @package_detail, package_detail: { package_id: @package_detail.package_id }
    assert_redirected_to package_detail_path(assigns(:package_detail))
  end

  test "should destroy package_detail" do
    assert_difference('PackageDetail.count', -1) do
      delete :destroy, id: @package_detail
    end

    assert_redirected_to package_details_path
  end
end
