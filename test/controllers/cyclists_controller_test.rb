require 'test_helper'

class CyclistsControllerTest < ActionController::TestCase
  setup do
    @cyclist = cyclists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cyclists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cyclist" do
    assert_difference('Cyclist.count') do
      post :create, cyclist: { female_no_helmet: @cyclist.female_no_helmet, female_sidewalk: @cyclist.female_sidewalk, female_with_helmet: @cyclist.female_with_helmet, female_wrong_way: @cyclist.female_wrong_way, male_no_helmet: @cyclist.male_no_helmet, male_sidewalk: @cyclist.male_sidewalk, male_with_helmet: @cyclist.male_with_helmet, male_wrong_way: @cyclist.male_wrong_way }
    end

    assert_redirected_to cyclist_path(assigns(:cyclist))
  end

  test "should show cyclist" do
    get :show, id: @cyclist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cyclist
    assert_response :success
  end

  test "should update cyclist" do
    patch :update, id: @cyclist, cyclist: { female_no_helmet: @cyclist.female_no_helmet, female_sidewalk: @cyclist.female_sidewalk, female_with_helmet: @cyclist.female_with_helmet, female_wrong_way: @cyclist.female_wrong_way, male_no_helmet: @cyclist.male_no_helmet, male_sidewalk: @cyclist.male_sidewalk, male_with_helmet: @cyclist.male_with_helmet, male_wrong_way: @cyclist.male_wrong_way }
    assert_redirected_to cyclist_path(assigns(:cyclist))
  end

  test "should destroy cyclist" do
    assert_difference('Cyclist.count', -1) do
      delete :destroy, id: @cyclist
    end

    assert_redirected_to cyclists_path
  end
end
