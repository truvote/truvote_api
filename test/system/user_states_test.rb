require "application_system_test_case"

class UserStatesTest < ApplicationSystemTestCase
  setup do
    @user_state = user_states(:one)
  end

  test "visiting the index" do
    visit user_states_url
    assert_selector "h1", text: "User States"
  end

  test "creating a User state" do
    visit user_states_url
    click_on "New User State"

    fill_in "District", with: @user_state.district_id
    fill_in "End date", with: @user_state.end_date
    fill_in "Role", with: @user_state.role
    fill_in "Start date", with: @user_state.start_date
    fill_in "User", with: @user_state.user_id
    click_on "Create User state"

    assert_text "User state was successfully created"
    click_on "Back"
  end

  test "updating a User state" do
    visit user_states_url
    click_on "Edit", match: :first

    fill_in "District", with: @user_state.district_id
    fill_in "End date", with: @user_state.end_date
    fill_in "Role", with: @user_state.role
    fill_in "Start date", with: @user_state.start_date
    fill_in "User", with: @user_state.user_id
    click_on "Update User state"

    assert_text "User state was successfully updated"
    click_on "Back"
  end

  test "destroying a User state" do
    visit user_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User state was successfully destroyed"
  end
end
