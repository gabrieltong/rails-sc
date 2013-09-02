require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { alumnus: @person.alumnus, exam_4: @person.exam_4, exam_6: @person.exam_6, exam_qimo: @person.exam_qimo, exam_toefl: @person.exam_toefl, finished: @person.finished, guide: @person.guide, guide_vip: @person.guide_vip, home_101: @person.home_101, home_51: @person.home_51, home_summer: @person.home_summer, logic: @person.logic, phone: @person.phone, qq: @person.qq, state: @person.state, username: @person.username }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    put :update, id: @person, person: { alumnus: @person.alumnus, exam_4: @person.exam_4, exam_6: @person.exam_6, exam_qimo: @person.exam_qimo, exam_toefl: @person.exam_toefl, finished: @person.finished, guide: @person.guide, guide_vip: @person.guide_vip, home_101: @person.home_101, home_51: @person.home_51, home_summer: @person.home_summer, logic: @person.logic, phone: @person.phone, qq: @person.qq, state: @person.state, username: @person.username }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
