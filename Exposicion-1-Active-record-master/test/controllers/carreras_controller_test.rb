require 'test_helper'

class CarrerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrera = carreras(:one)
  end

  test "should get index" do
    get carreras_url, as: :json
    assert_response :success
  end

  test "should create carrera" do
    assert_difference('Carrera.count') do
      post carreras_url, params: { carrera: { id: @carrera.id, name: @carrera.name, planestudios: @carrera.planestudios } }, as: :json
    end

    assert_response 201
  end

  test "should show carrera" do
    get carrera_url(@carrera), as: :json
    assert_response :success
  end

  test "should update carrera" do
    patch carrera_url(@carrera), params: { carrera: { id: @carrera.id, name: @carrera.name, planestudios: @carrera.planestudios } }, as: :json
    assert_response 200
  end

  test "should destroy carrera" do
    assert_difference('Carrera.count', -1) do
      delete carrera_url(@carrera), as: :json
    end

    assert_response 204
  end
end
