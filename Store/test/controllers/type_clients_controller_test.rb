require 'test_helper'

class TypeClientsControllerTest < ActionController::TestCase
  setup do
    @type_client = type_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_client" do
    assert_difference('TypeClient.count') do
      post :create, type_client: { name: @type_client.name }
    end

    assert_redirected_to type_client_path(assigns(:type_client))
  end

  test "should show type_client" do
    get :show, id: @type_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_client
    assert_response :success
  end

  test "should update type_client" do
    patch :update, id: @type_client, type_client: { name: @type_client.name }
    assert_redirected_to type_client_path(assigns(:type_client))
  end

  test "should destroy type_client" do
    assert_difference('TypeClient.count', -1) do
      delete :destroy, id: @type_client
    end

    assert_redirected_to type_clients_path
  end
end
