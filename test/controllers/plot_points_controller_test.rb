require 'test_helper'

class PlotPointsControllerTest < ActionController::TestCase
  setup do
    @plot_point = plot_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plot_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plot_point" do
    assert_difference('PlotPoint.count') do
      post :create, plot_point: { description: @plot_point.description, story_id: @plot_point.story_id, title: @plot_point.title }
    end

    assert_redirected_to plot_point_path(assigns(:plot_point))
  end

  test "should show plot_point" do
    get :show, id: @plot_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plot_point
    assert_response :success
  end

  test "should update plot_point" do
    patch :update, id: @plot_point, plot_point: { description: @plot_point.description, story_id: @plot_point.story_id, title: @plot_point.title }
    assert_redirected_to plot_point_path(assigns(:plot_point))
  end

  test "should destroy plot_point" do
    assert_difference('PlotPoint.count', -1) do
      delete :destroy, id: @plot_point
    end

    assert_redirected_to plot_points_path
  end
end
