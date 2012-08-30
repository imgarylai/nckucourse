require 'test_helper'

class ExpsControllerTest < ActionController::TestCase
  setup do
    @exp = exps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp" do
    assert_difference('Exp.count') do
      post :create, exp: { content: @exp.content, course_id: @exp.course_id, material: @exp.material, rate: @exp.rate, score: @exp.score, style: @exp.style, user_id: @exp.user_id, year: @exp.year }
    end

    assert_redirected_to exp_path(assigns(:exp))
  end

  test "should show exp" do
    get :show, id: @exp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exp
    assert_response :success
  end

  test "should update exp" do
    put :update, id: @exp, exp: { content: @exp.content, course_id: @exp.course_id, material: @exp.material, rate: @exp.rate, score: @exp.score, style: @exp.style, user_id: @exp.user_id, year: @exp.year }
    assert_redirected_to exp_path(assigns(:exp))
  end

  test "should destroy exp" do
    assert_difference('Exp.count', -1) do
      delete :destroy, id: @exp
    end

    assert_redirected_to exps_path
  end
end
