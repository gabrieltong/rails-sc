require 'test_helper'

class BaomingsControllerTest < ActionController::TestCase
  setup do
    @baoming = baomings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baomings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baoming" do
    assert_difference('Baoming.count') do
      post :create, baoming: { discount_way: @baoming.discount_way, important: @baoming.important, installment: @baoming.installment, installment_duration: @baoming.installment_duration, installment_last: @baoming.installment_last, installment_value: @baoming.installment_value, makeup: @baoming.makeup, next: @baoming.next, payment_way: @baoming.payment_way, person_id: @baoming.person_id }
    end

    assert_redirected_to baoming_path(assigns(:baoming))
  end

  test "should show baoming" do
    get :show, id: @baoming
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baoming
    assert_response :success
  end

  test "should update baoming" do
    put :update, id: @baoming, baoming: { discount_way: @baoming.discount_way, important: @baoming.important, installment: @baoming.installment, installment_duration: @baoming.installment_duration, installment_last: @baoming.installment_last, installment_value: @baoming.installment_value, makeup: @baoming.makeup, next: @baoming.next, payment_way: @baoming.payment_way, person_id: @baoming.person_id }
    assert_redirected_to baoming_path(assigns(:baoming))
  end

  test "should destroy baoming" do
    assert_difference('Baoming.count', -1) do
      delete :destroy, id: @baoming
    end

    assert_redirected_to baomings_path
  end
end
