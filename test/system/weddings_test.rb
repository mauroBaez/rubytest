require "application_system_test_case"

class WeddingsTest < ApplicationSystemTestCase
  setup do
    @wedding = weddings(:one)
  end

  test "visiting the index" do
    visit weddings_url
    assert_selector "h1", text: "Weddings"
  end

  test "creating a Wedding" do
    visit weddings_url
    click_on "New Wedding"

    fill_in "Bride Name", with: @wedding.bride_name
    fill_in "Bride Surname", with: @wedding.bride_surname
    fill_in "Groom Name", with: @wedding.groom_name
    fill_in "Groom Surname", with: @wedding.groom_surname
    click_on "Create Wedding"

    assert_text "Wedding was successfully created"
    click_on "Back"
  end

  test "updating a Wedding" do
    visit weddings_url
    click_on "Edit", match: :first

    fill_in "Bride Name", with: @wedding.bride_name
    fill_in "Bride Surname", with: @wedding.bride_surname
    fill_in "Groom Name", with: @wedding.groom_name
    fill_in "Groom Surname", with: @wedding.groom_surname
    click_on "Update Wedding"

    assert_text "Wedding was successfully updated"
    click_on "Back"
  end

  test "destroying a Wedding" do
    visit weddings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wedding was successfully destroyed"
  end
end
