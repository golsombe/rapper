require File.dirname(__FILE__) + '/../test_helper'

class RoleUsersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:role_users)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_role_user
    assert_difference('RoleUser.count') do
      post :create, :role_user => { }
    end

    assert_redirected_to role_user_path(assigns(:role_user))
  end

  def test_should_show_role_user
    get :show, :id => role_users(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => role_users(:one).id
    assert_response :success
  end

  def test_should_update_role_user
    put :update, :id => role_users(:one).id, :role_user => { }
    assert_redirected_to role_user_path(assigns(:role_user))
  end

  def test_should_destroy_role_user
    assert_difference('RoleUser.count', -1) do
      delete :destroy, :id => role_users(:one).id
    end

    assert_redirected_to role_users_path
  end
end
