require 'test_helper'

class AvdiscipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avdiscip = avdiscips(:one)
  end

  test "should get index" do
    get avdiscips_url
    assert_response :success
  end

  test "should get new" do
    get new_avdiscip_url
    assert_response :success
  end

  test "should create avdiscip" do
    assert_difference('Avdiscip.count') do
      post avdiscips_url, params: { avdiscip: { ano: @avdiscip.ano, coerencia: @avdiscip.coerencia, criterios: @avdiscip.criterios, cronocumprido: @avdiscip.cronocumprido, cronograma: @avdiscip.cronograma, disciplina_id: @avdiscip.disciplina_id, entendeuobj: @avdiscip.entendeuobj, estrategias: @avdiscip.estrategias, extraclasse: @avdiscip.extraclasse, notadisciplina: @avdiscip.notadisciplina, percepcao: @avdiscip.percepcao, pulouavaliacao: @avdiscip.pulouavaliacao, quantadequada: @avdiscip.quantadequada, recomendaria: @avdiscip.recomendaria, saladeaula: @avdiscip.saladeaula, semestre: @avdiscip.semestre, seuconhecimento: @avdiscip.seuconhecimento, sugestoes: @avdiscip.sugestoes } }
    end

    assert_redirected_to avdiscip_url(Avdiscip.last)
  end

  test "should show avdiscip" do
    get avdiscip_url(@avdiscip)
    assert_response :success
  end

  test "should get edit" do
    get edit_avdiscip_url(@avdiscip)
    assert_response :success
  end

  test "should update avdiscip" do
    patch avdiscip_url(@avdiscip), params: { avdiscip: { ano: @avdiscip.ano, coerencia: @avdiscip.coerencia, criterios: @avdiscip.criterios, cronocumprido: @avdiscip.cronocumprido, cronograma: @avdiscip.cronograma, disciplina_id: @avdiscip.disciplina_id, entendeuobj: @avdiscip.entendeuobj, estrategias: @avdiscip.estrategias, extraclasse: @avdiscip.extraclasse, notadisciplina: @avdiscip.notadisciplina, percepcao: @avdiscip.percepcao, pulouavaliacao: @avdiscip.pulouavaliacao, quantadequada: @avdiscip.quantadequada, recomendaria: @avdiscip.recomendaria, saladeaula: @avdiscip.saladeaula, semestre: @avdiscip.semestre, seuconhecimento: @avdiscip.seuconhecimento, sugestoes: @avdiscip.sugestoes } }
    assert_redirected_to avdiscip_url(@avdiscip)
  end

  test "should destroy avdiscip" do
    assert_difference('Avdiscip.count', -1) do
      delete avdiscip_url(@avdiscip)
    end

    assert_redirected_to avdiscips_url
  end
end
