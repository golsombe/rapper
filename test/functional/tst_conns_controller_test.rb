require 'test_helper'

class TstConnsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tst_conns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tst_conn" do
    assert_difference('TstConn.count') do
      post :create, :tst_conn => { }
    end

    assert_redirected_to tst_conn_path(assigns(:tst_conn))
  end

  test "should show tst_conn" do
    get :show, :id => tst_conns(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tst_conns(:one).to_param
    assert_response :success
  end

  test "should update tst_conn" do
    put :update, :id => tst_conns(:one).to_param, :tst_conn => { }
    assert_redirected_to tst_conn_path(assigns(:tst_conn))
  end

  test "should destroy tst_conn" do
    assert_difference('TstConn.count', -1) do
      delete :destroy, :id => tst_conns(:one).to_param
    end

    assert_redirected_to tst_conns_path
  end
end
