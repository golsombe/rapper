require File.dirname(__FILE__) + '/../test_helper'

class ConnectionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:connections)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_connection
    assert_difference('Connection.count') do
      post :create, :connection => { }
    end

    assert_redirected_to connection_path(assigns(:connection))
  end

  def test_should_show_connection
    get :show, :id => connections(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => connections(:one).id
    assert_response :success
  end

  def test_should_update_connection
    put :update, :id => connections(:one).id, :connection => { }
    assert_redirected_to connection_path(assigns(:connection))
  end

  def test_should_destroy_connection
    assert_difference('Connection.count', -1) do
      delete :destroy, :id => connections(:one).id
    end

    assert_redirected_to connections_path
  end
end
