require 'test_helper'

class PedestriansControllerTest < ActionController::TestCase
  setup do
    @pedestrian = pedestrians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedestrians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedestrian" do
    assert_difference('Pedestrian.count') do
      post :create, pedestrian: { disabled: @pedestrian.disabled, female: @pedestrian.female, male: @pedestrian.male, other: @pedestrian.other }
    end

    assert_redirected_to pedestrian_path(assigns(:pedestrian))
  end

  test "should show pedestrian" do
    get :show, id: @pedestrian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedestrian
    assert_response :success
  end

  test "should update pedestrian" do
    patch :update, id: @pedestrian, pedestrian: { disabled: @pedestrian.disabled, female: @pedestrian.female, male: @pedestrian.male, other: @pedestrian.other }
    assert_redirected_to pedestrian_path(assigns(:pedestrian))
  end

  test "should destroy pedestrian" do
    assert_difference('Pedestrian.count', -1) do
      delete :destroy, id: @pedestrian
    end

    assert_redirected_to pedestrians_path
  end
end
