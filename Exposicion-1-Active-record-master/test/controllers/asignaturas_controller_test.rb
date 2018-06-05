require 'test_helper'

class AsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignatura = asignaturas(:one)
  end

  test "should get index" do
    get asignaturas_url, as: :json
    assert_response :success
  end

  test "should create asignatura" do
    assert_difference('Asignatura.count') do
      post asignaturas_url, params: { asignatura: { codigo: @asignatura.codigo, id: @asignatura.id, name: @asignatura.name, planestudios: @asignatura.planestudios, profesor: @asignatura.profesor } }, as: :json
    end

    assert_response 201
  end

  test "should show asignatura" do
    get asignatura_url(@asignatura), as: :json
    assert_response :success
  end

  test "should update asignatura" do
    patch asignatura_url(@asignatura), params: { asignatura: { codigo: @asignatura.codigo, id: @asignatura.id, name: @asignatura.name, planestudios: @asignatura.planestudios, profesor: @asignatura.profesor } }, as: :json
    assert_response 200
  end

  test "should destroy asignatura" do
    assert_difference('Asignatura.count', -1) do
      delete asignatura_url(@asignatura), as: :json
    end

    assert_response 204
  end
end
