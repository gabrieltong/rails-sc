require 'test_helper'

class PlanitemsControllerTest < ActionController::TestCase
  setup do
    @planitem = planitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planitem" do
    assert_difference('Planitem.count') do
      post :create, planitem: { duration: @planitem.duration, klassplan_id: @planitem.klassplan_id, person_id: @planitem.person_id, start_at: @planitem.start_at, state: @planitem.state, title: @planitem.title }
    end

    assert_redirected_to planitem_path(assigns(:planitem))
  end

  test "should show planitem" do
    get :show, id: @planitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planitem
    assert_response :success
  end

  test "should update planitem" do
    put :update, id: @planitem, planitem: { duration: @planitem.duration, klassplan_id: @planitem.klassplan_id, person_id: @planitem.person_id, start_at: @planitem.start_at, state: @planitem.state, title: @planitem.title }
    assert_redirected_to planitem_path(assigns(:planitem))
  end

  test "should destroy planitem" do
    assert_difference('Planitem.count', -1) do
      delete :destroy, id: @planitem
    end

    assert_redirected_to planitems_path
  end
end
