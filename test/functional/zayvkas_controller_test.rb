require 'test_helper'

class ZayvkasControllerTest < ActionController::TestCase
  setup do
    @zayvka = zayvkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zayvkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zayvka" do
    assert_difference('Zayvka.count') do
      post :create, zayvka: { email: @zayvka.email, familiya: @zayvka.familiya, info_O_sebe: @zayvka.info_O_sebe, name: @zayvka.name, nomer_telefona: @zayvka.nomer_telefona, otchestvo: @zayvka.otchestvo }
    end

    assert_redirected_to zayvka_path(assigns(:zayvka))
  end

  test "should show zayvka" do
    get :show, id: @zayvka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zayvka
    assert_response :success
  end

  test "should update zayvka" do
    put :update, id: @zayvka, zayvka: { email: @zayvka.email, familiya: @zayvka.familiya, info_O_sebe: @zayvka.info_O_sebe, name: @zayvka.name, nomer_telefona: @zayvka.nomer_telefona, otchestvo: @zayvka.otchestvo }
    assert_redirected_to zayvka_path(assigns(:zayvka))
  end

  test "should destroy zayvka" do
    assert_difference('Zayvka.count', -1) do
      delete :destroy, id: @zayvka
    end

    assert_redirected_to zayvkas_path
  end
end
