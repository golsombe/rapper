require File.dirname(__FILE__) + '/../test_helper'

class PackageSourcesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:package_sources)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_package_source
    assert_difference('PackageSource.count') do
      post :create, :package_source => { }
    end

    assert_redirected_to package_source_path(assigns(:package_source))
  end

  def test_should_show_package_source
    get :show, :id => package_sources(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => package_sources(:one).id
    assert_response :success
  end

  def test_should_update_package_source
    put :update, :id => package_sources(:one).id, :package_source => { }
    assert_redirected_to package_source_path(assigns(:package_source))
  end

  def test_should_destroy_package_source
    assert_difference('PackageSource.count', -1) do
      delete :destroy, :id => package_sources(:one).id
    end

    assert_redirected_to package_sources_path
  end
end
