require 'test_helper'

class GruposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo = grupos(:one)
  end

  test "should get index" do
    get grupos_url, as: :json
    assert_response :success
  end

  test "should create grupo" do
    assert_difference('Grupo.count') do
      post grupos_url, params: { grupo: { horario: @grupo.horario, id: @grupo.id, name: @grupo.name } }, as: :json
    end

    assert_response 201
  end

  test "should show grupo" do
    get grupo_url(@grupo), as: :json
    assert_response :success
  end

  test "should update grupo" do
    patch grupo_url(@grupo), params: { grupo: { horario: @grupo.horario, id: @grupo.id, name: @grupo.name } }, as: :json
    assert_response 200
  end

  test "should destroy grupo" do
    assert_difference('Grupo.count', -1) do
      delete grupo_url(@grupo), as: :json
    end

    assert_response 204
  end
end
