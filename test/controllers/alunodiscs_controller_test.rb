require 'test_helper'

class AlunodiscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alunodisc = alunodiscs(:one)
  end

  test "should get index" do
    get alunodiscs_url
    assert_response :success
  end

  test "should get new" do
    get new_alunodisc_url
    assert_response :success
  end

  test "should create alunodisc" do
    assert_difference('Alunodisc.count') do
      post alunodiscs_url, params: { alunodisc: { aluno_id: @alunodisc.aluno_id, ano: @alunodisc.ano, disciplina_id: @alunodisc.disciplina_id, semestre: @alunodisc.semestre, status: @alunodisc.status } }
    end

    assert_redirected_to alunodisc_url(Alunodisc.last)
  end

  test "should show alunodisc" do
    get alunodisc_url(@alunodisc)
    assert_response :success
  end

  test "should get edit" do
    get edit_alunodisc_url(@alunodisc)
    assert_response :success
  end

  test "should update alunodisc" do
    patch alunodisc_url(@alunodisc), params: { alunodisc: { aluno_id: @alunodisc.aluno_id, ano: @alunodisc.ano, disciplina_id: @alunodisc.disciplina_id, semestre: @alunodisc.semestre, status: @alunodisc.status } }
    assert_redirected_to alunodisc_url(@alunodisc)
  end

  test "should destroy alunodisc" do
    assert_difference('Alunodisc.count', -1) do
      delete alunodisc_url(@alunodisc)
    end

    assert_redirected_to alunodiscs_url
  end
end
