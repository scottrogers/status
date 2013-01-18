require 'test_helper'

class LaunchStatusesControllerTest < ActionController::TestCase
  setup do
    @launch_status = launch_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:launch_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create launch_status" do
    assert_difference('LaunchStatus.count') do
      post :create, :launch_status => { :description => @launch_status.description, :name => @launch_status.name }
    end

    assert_redirected_to launch_status_path(assigns(:launch_status))
  end

  test "should show launch_status" do
    get :show, :id => @launch_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @launch_status
    assert_response :success
  end

  test "should update launch_status" do
    put :update, :id => @launch_status, :launch_status => { :description => @launch_status.description, :name => @launch_status.name }
    assert_redirected_to launch_status_path(assigns(:launch_status))
  end

  test "should destroy launch_status" do
    assert_difference('LaunchStatus.count', -1) do
      delete :destroy, :id => @launch_status
    end

    assert_redirected_to launch_statuses_path
  end
end
