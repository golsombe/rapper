require File.dirname(__FILE__) + '/../test_helper'

class PackageMappingsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:package_mappings)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_package_mapping
    assert_difference('PackageMapping.count') do
      post :create, :package_mapping => { }
    end

    assert_redirected_to package_mapping_path(assigns(:package_mapping))
  end

  def test_should_show_package_mapping
    get :show, :id => package_mappings(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => package_mappings(:one).id
    assert_response :success
  end

  def test_should_update_package_mapping
    put :update, :id => package_mappings(:one).id, :package_mapping => { }
    assert_redirected_to package_mapping_path(assigns(:package_mapping))
  end

  def test_should_destroy_package_mapping
    assert_difference('PackageMapping.count', -1) do
      delete :destroy, :id => package_mappings(:one).id
    end

    assert_redirected_to package_mappings_path
  end
end
