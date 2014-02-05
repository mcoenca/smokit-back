require 'test_helper'

class SmokesControllerTest < ActionController::TestCase
  setup do
    @smoke = smokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smoke" do
    assert_difference('Smoke.count') do
      post :create, smoke: { smoke_date: @smoke.smoke_date, smoke_lat: @smoke.smoke_lat, smoke_long: @smoke.smoke_long, user_id: @smoke.user_id }
    end

    assert_redirected_to smoke_path(assigns(:smoke))
  end

  test "should show smoke" do
    get :show, id: @smoke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smoke
    assert_response :success
  end

  test "should update smoke" do
    patch :update, id: @smoke, smoke: { smoke_date: @smoke.smoke_date, smoke_lat: @smoke.smoke_lat, smoke_long: @smoke.smoke_long, user_id: @smoke.user_id }
    assert_redirected_to smoke_path(assigns(:smoke))
  end

  test "should destroy smoke" do
    assert_difference('Smoke.count', -1) do
      delete :destroy, id: @smoke
    end

    assert_redirected_to smokes_path
  end
end
