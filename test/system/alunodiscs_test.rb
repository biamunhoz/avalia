require "application_system_test_case"

class AlunodiscsTest < ApplicationSystemTestCase
  setup do
    @alunodisc = alunodiscs(:one)
  end

  test "visiting the index" do
    visit alunodiscs_url
    assert_selector "h1", text: "Alunodiscs"
  end

  test "creating a Alunodisc" do
    visit alunodiscs_url
    click_on "New Alunodisc"

    fill_in "Aluno", with: @alunodisc.aluno_id
    fill_in "Ano", with: @alunodisc.ano
    fill_in "Disciplina", with: @alunodisc.disciplina_id
    fill_in "Semestre", with: @alunodisc.semestre
    fill_in "Status", with: @alunodisc.status
    click_on "Create Alunodisc"

    assert_text "Alunodisc was successfully created"
    click_on "Back"
  end

  test "updating a Alunodisc" do
    visit alunodiscs_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @alunodisc.aluno_id
    fill_in "Ano", with: @alunodisc.ano
    fill_in "Disciplina", with: @alunodisc.disciplina_id
    fill_in "Semestre", with: @alunodisc.semestre
    fill_in "Status", with: @alunodisc.status
    click_on "Update Alunodisc"

    assert_text "Alunodisc was successfully updated"
    click_on "Back"
  end

  test "destroying a Alunodisc" do
    visit alunodiscs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alunodisc was successfully destroyed"
  end
end
