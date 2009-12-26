require File.dirname(__FILE__) + '/../test_helper'

class DbDriversControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:db_drivers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_db_driver
    assert_difference('DbDriver.count') do
      post :create, :db_driver => { }
    end

    assert_redirected_to db_driver_path(assigns(:db_driver))
  end

  def test_should_show_db_driver
    get :show, :id => db_drivers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => db_drivers(:one).id
    assert_response :success
  end

  def test_should_update_db_driver
    put :update, :id => db_drivers(:one).id, :db_driver => { }
    assert_redirected_to db_driver_path(assigns(:db_driver))
  end

  def test_should_destroy_db_driver
    assert_difference('DbDriver.count', -1) do
      delete :destroy, :id => db_drivers(:one).id
    end

    assert_redirected_to db_drivers_path
  end
end
