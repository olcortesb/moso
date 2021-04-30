require "application_system_test_case"

class KnivesTest < ApplicationSystemTestCase
  setup do
    @knife = knives(:one)
  end

  test "visiting the index" do
    visit knives_url
    assert_selector "h1", text: "Knives"
  end

  test "creating a Knife" do
    visit knives_url
    click_on "New Knife"

    fill_in "Code", with: @knife.code
    fill_in "Tag", with: @knife.tag
    fill_in "Url", with: @knife.url
    click_on "Create Knife"

    assert_text "Knife was successfully created"
    click_on "Back"
  end

  test "updating a Knife" do
    visit knives_url
    click_on "Edit", match: :first

    fill_in "Code", with: @knife.code
    fill_in "Tag", with: @knife.tag
    fill_in "Url", with: @knife.url
    click_on "Update Knife"

    assert_text "Knife was successfully updated"
    click_on "Back"
  end

  test "destroying a Knife" do
    visit knives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Knife was successfully destroyed"
  end
end
