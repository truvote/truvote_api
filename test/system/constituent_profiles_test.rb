require "application_system_test_case"

class ConstituentProfilesTest < ApplicationSystemTestCase
  setup do
    @constituent_profile = constituent_profiles(:one)
  end

  test "visiting the index" do
    visit constituent_profiles_url
    assert_selector "h1", text: "Constituent Profiles"
  end

  test "creating a Constituent profile" do
    visit constituent_profiles_url
    click_on "New Constituent Profile"

    fill_in "User", with: @constituent_profile.user_id
    click_on "Create Constituent profile"

    assert_text "Constituent profile was successfully created"
    click_on "Back"
  end

  test "updating a Constituent profile" do
    visit constituent_profiles_url
    click_on "Edit", match: :first

    fill_in "User", with: @constituent_profile.user_id
    click_on "Update Constituent profile"

    assert_text "Constituent profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Constituent profile" do
    visit constituent_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Constituent profile was successfully destroyed"
  end
end
