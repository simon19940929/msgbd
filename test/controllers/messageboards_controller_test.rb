require 'test_helper'

class MessageboardsControllerTest < ActionController::TestCase
  setup do
    @messageboard = messageboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messageboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messageboard" do
    assert_difference('Messageboard.count') do
      post :create, messageboard: { description: @messageboard.description, title: @messageboard.title }
    end

    assert_redirected_to messageboard_path(assigns(:messageboard))
  end

  test "should show messageboard" do
    get :show, id: @messageboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messageboard
    assert_response :success
  end

  test "should update messageboard" do
    patch :update, id: @messageboard, messageboard: { description: @messageboard.description, title: @messageboard.title }
    assert_redirected_to messageboard_path(assigns(:messageboard))
  end

  test "should destroy messageboard" do
    assert_difference('Messageboard.count', -1) do
      delete :destroy, id: @messageboard
    end

    assert_redirected_to messageboards_path
  end
end
