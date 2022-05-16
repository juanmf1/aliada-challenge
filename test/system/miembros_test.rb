require "application_system_test_case"

class MiembrosTest < ApplicationSystemTestCase
  setup do
    @miembro = miembros(:one)
  end

  test "visiting the index" do
    visit miembros_url
    assert_selector "h1", text: "Miembros"
  end

  test "should create miembro" do
    visit miembros_url
    click_on "New miembro"

    click_on "Create Miembro"

    assert_text "Miembro was successfully created"
    click_on "Back"
  end

  test "should update Miembro" do
    visit miembro_url(@miembro)
    click_on "Edit this miembro", match: :first

    click_on "Update Miembro"

    assert_text "Miembro was successfully updated"
    click_on "Back"
  end

  test "should destroy Miembro" do
    visit miembro_url(@miembro)
    click_on "Destroy this miembro", match: :first

    assert_text "Miembro was successfully destroyed"
  end
end
