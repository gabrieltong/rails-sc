require 'test_helper'

class KlassplansControllerTest < ActionController::TestCase
  setup do
    @klassplan = klassplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klassplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klassplan" do
    assert_difference('Klassplan.count') do
      post :create, klassplan: { before_klass_notification_at: @klassplan.before_klass_notification_at, klass_id: @klassplan.klass_id, start_at: @klassplan.start_at }
    end

    assert_redirected_to klassplan_path(assigns(:klassplan))
  end

  test "should show klassplan" do
    get :show, id: @klassplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @klassplan
    assert_response :success
  end

  test "should update klassplan" do
    put :update, id: @klassplan, klassplan: { before_klass_notification_at: @klassplan.before_klass_notification_at, klass_id: @klassplan.klass_id, start_at: @klassplan.start_at }
    assert_redirected_to klassplan_path(assigns(:klassplan))
  end

  test "should destroy klassplan" do
    assert_difference('Klassplan.count', -1) do
      delete :destroy, id: @klassplan
    end

    assert_redirected_to klassplans_path
  end
end
