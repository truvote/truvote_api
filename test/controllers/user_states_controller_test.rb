require 'test_helper'

class UserStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_state = user_states(:one)
  end

  test "should get index" do
    get user_states_url
    assert_response :success
  end

  test "should get new" do
    get new_user_state_url
    assert_response :success
  end

  test "should create user_state" do
    assert_difference('UserState.count') do
      post user_states_url, params: { user_state: { district_id: @user_state.district_id, end_date: @user_state.end_date, role: @user_state.role, start_date: @user_state.start_date, user_id: @user_state.user_id } }
    end

    assert_redirected_to user_state_url(UserState.last)
  end

  test "should show user_state" do
    get user_state_url(@user_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_state_url(@user_state)
    assert_response :success
  end

  test "should update user_state" do
    patch user_state_url(@user_state), params: { user_state: { district_id: @user_state.district_id, end_date: @user_state.end_date, role: @user_state.role, start_date: @user_state.start_date, user_id: @user_state.user_id } }
    assert_redirected_to user_state_url(@user_state)
  end

  test "should destroy user_state" do
    assert_difference('UserState.count', -1) do
      delete user_state_url(@user_state)
    end

    assert_redirected_to user_states_url
  end
end
