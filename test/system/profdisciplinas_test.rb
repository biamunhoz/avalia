require "application_system_test_case"

class ProfdisciplinasTest < ApplicationSystemTestCase
  setup do
    @profdisciplina = profdisciplinas(:one)
  end

  test "visiting the index" do
    visit profdisciplinas_url
    assert_selector "h1", text: "Profdisciplinas"
  end

  test "creating a Profdisciplina" do
    visit profdisciplinas_url
    click_on "New Profdisciplina"

    fill_in "Disciplina", with: @profdisciplina.disciplina_id
    fill_in "Professor", with: @profdisciplina.professor_id
    click_on "Create Profdisciplina"

    assert_text "Profdisciplina was successfully created"
    click_on "Back"
  end

  test "updating a Profdisciplina" do
    visit profdisciplinas_url
    click_on "Edit", match: :first

    fill_in "Disciplina", with: @profdisciplina.disciplina_id
    fill_in "Professor", with: @profdisciplina.professor_id
    click_on "Update Profdisciplina"

    assert_text "Profdisciplina was successfully updated"
    click_on "Back"
  end

  test "destroying a Profdisciplina" do
    visit profdisciplinas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profdisciplina was successfully destroyed"
  end
end
