require 'test_helper'

class BaomingitemsControllerTest < ActionController::TestCase
  setup do
    @baomingitem = baomingitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baomingitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baomingitem" do
    assert_difference('Baomingitem.count') do
      post :create, baomingitem: { baoming_id: @baomingitem.baoming_id, end_at: @baomingitem.end_at, free: @baomingitem.free, klass_id: @baomingitem.klass_id }
    end

    assert_redirected_to baomingitem_path(assigns(:baomingitem))
  end

  test "should show baomingitem" do
    get :show, id: @baomingitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baomingitem
    assert_response :success
  end

  test "should update baomingitem" do
    put :update, id: @baomingitem, baomingitem: { baoming_id: @baomingitem.baoming_id, end_at: @baomingitem.end_at, free: @baomingitem.free, klass_id: @baomingitem.klass_id }
    assert_redirected_to baomingitem_path(assigns(:baomingitem))
  end

  test "should destroy baomingitem" do
    assert_difference('Baomingitem.count', -1) do
      delete :destroy, id: @baomingitem
    end

    assert_redirected_to baomingitems_path
  end
end
