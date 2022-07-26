require "application_system_test_case"

class AvdiscipsTest < ApplicationSystemTestCase
  setup do
    @avdiscip = avdiscips(:one)
  end

  test "visiting the index" do
    visit avdiscips_url
    assert_selector "h1", text: "Avdiscips"
  end

  test "creating a Avdiscip" do
    visit avdiscips_url
    click_on "New Avdiscip"

    fill_in "Ano", with: @avdiscip.ano
    fill_in "Coerencia", with: @avdiscip.coerencia
    check "Criterios" if @avdiscip.criterios
    fill_in "Cronocumprido", with: @avdiscip.cronocumprido
    check "Cronograma" if @avdiscip.cronograma
    fill_in "Disciplina", with: @avdiscip.disciplina_id
    check "Entendeuobj" if @avdiscip.entendeuobj
    fill_in "Estrategias", with: @avdiscip.estrategias
    fill_in "Extraclasse", with: @avdiscip.extraclasse
    fill_in "Notadisciplina", with: @avdiscip.notadisciplina
    fill_in "Percepcao", with: @avdiscip.percepcao
    check "Pulouavaliacao" if @avdiscip.pulouavaliacao
    fill_in "Quantadequada", with: @avdiscip.quantadequada
    fill_in "Recomendaria", with: @avdiscip.recomendaria
    fill_in "Saladeaula", with: @avdiscip.saladeaula
    fill_in "Semestre", with: @avdiscip.semestre
    fill_in "Seuconhecimento", with: @avdiscip.seuconhecimento
    fill_in "Sugestoes", with: @avdiscip.sugestoes
    click_on "Create Avdiscip"

    assert_text "Avdiscip was successfully created"
    click_on "Back"
  end

  test "updating a Avdiscip" do
    visit avdiscips_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @avdiscip.ano
    fill_in "Coerencia", with: @avdiscip.coerencia
    check "Criterios" if @avdiscip.criterios
    fill_in "Cronocumprido", with: @avdiscip.cronocumprido
    check "Cronograma" if @avdiscip.cronograma
    fill_in "Disciplina", with: @avdiscip.disciplina_id
    check "Entendeuobj" if @avdiscip.entendeuobj
    fill_in "Estrategias", with: @avdiscip.estrategias
    fill_in "Extraclasse", with: @avdiscip.extraclasse
    fill_in "Notadisciplina", with: @avdiscip.notadisciplina
    fill_in "Percepcao", with: @avdiscip.percepcao
    check "Pulouavaliacao" if @avdiscip.pulouavaliacao
    fill_in "Quantadequada", with: @avdiscip.quantadequada
    fill_in "Recomendaria", with: @avdiscip.recomendaria
    fill_in "Saladeaula", with: @avdiscip.saladeaula
    fill_in "Semestre", with: @avdiscip.semestre
    fill_in "Seuconhecimento", with: @avdiscip.seuconhecimento
    fill_in "Sugestoes", with: @avdiscip.sugestoes
    click_on "Update Avdiscip"

    assert_text "Avdiscip was successfully updated"
    click_on "Back"
  end

  test "destroying a Avdiscip" do
    visit avdiscips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avdiscip was successfully destroyed"
  end
end
