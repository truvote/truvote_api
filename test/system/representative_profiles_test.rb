require "application_system_test_case"

class RepresentativeProfilesTest < ApplicationSystemTestCase
  setup do
    @representative_profile = representative_profiles(:one)
  end

  test "visiting the index" do
    visit representative_profiles_url
    assert_selector "h1", text: "Representative Profiles"
  end

  test "creating a Representative profile" do
    visit representative_profiles_url
    click_on "New Representative Profile"

    fill_in "User", with: @representative_profile.user_id
    click_on "Create Representative profile"

    assert_text "Representative profile was successfully created"
    click_on "Back"
  end

  test "updating a Representative profile" do
    visit representative_profiles_url
    click_on "Edit", match: :first

    fill_in "User", with: @representative_profile.user_id
    click_on "Update Representative profile"

    assert_text "Representative profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Representative profile" do
    visit representative_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Representative profile was successfully destroyed"
  end
end
