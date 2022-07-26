require 'test_helper'

class ProfdisciplinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profdisciplina = profdisciplinas(:one)
  end

  test "should get index" do
    get profdisciplinas_url
    assert_response :success
  end

  test "should get new" do
    get new_profdisciplina_url
    assert_response :success
  end

  test "should create profdisciplina" do
    assert_difference('Profdisciplina.count') do
      post profdisciplinas_url, params: { profdisciplina: { disciplina_id: @profdisciplina.disciplina_id, professor_id: @profdisciplina.professor_id } }
    end

    assert_redirected_to profdisciplina_url(Profdisciplina.last)
  end

  test "should show profdisciplina" do
    get profdisciplina_url(@profdisciplina)
    assert_response :success
  end

  test "should get edit" do
    get edit_profdisciplina_url(@profdisciplina)
    assert_response :success
  end

  test "should update profdisciplina" do
    patch profdisciplina_url(@profdisciplina), params: { profdisciplina: { disciplina_id: @profdisciplina.disciplina_id, professor_id: @profdisciplina.professor_id } }
    assert_redirected_to profdisciplina_url(@profdisciplina)
  end

  test "should destroy profdisciplina" do
    assert_difference('Profdisciplina.count', -1) do
      delete profdisciplina_url(@profdisciplina)
    end

    assert_redirected_to profdisciplinas_url
  end
end
