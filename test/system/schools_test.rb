require "application_system_test_case"

class SchoolsTest < ApplicationSystemTestCase
  setup do
    @school = schools(:one)
  end

  test "visiting the index" do
    visit schools_url
    assert_selector "h1", text: "Schools"
  end

  test "creating a School" do
    visit schools_url
    click_on "New School"

    fill_in "Rut", with: @school.Rut
    fill_in "Adress", with: @school.adress
    fill_in "Comuna", with: @school.comuna
    fill_in "Email", with: @school.email
    check "Integration" if @school.integration
    fill_in "Name", with: @school.name
    fill_in "Phone", with: @school.phone
    fill_in "Region", with: @school.region
    fill_in "Rol data base", with: @school.rol_data_base
    fill_in "Type", with: @school.type
    click_on "Create School"

    assert_text "School was successfully created"
    click_on "Back"
  end

  test "updating a School" do
    visit schools_url
    click_on "Edit", match: :first

    fill_in "Rut", with: @school.Rut
    fill_in "Adress", with: @school.adress
    fill_in "Comuna", with: @school.comuna
    fill_in "Email", with: @school.email
    check "Integration" if @school.integration
    fill_in "Name", with: @school.name
    fill_in "Phone", with: @school.phone
    fill_in "Region", with: @school.region
    fill_in "Rol data base", with: @school.rol_data_base
    fill_in "Type", with: @school.type
    click_on "Update School"

    assert_text "School was successfully updated"
    click_on "Back"
  end

  test "destroying a School" do
    visit schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School was successfully destroyed"
  end
end
