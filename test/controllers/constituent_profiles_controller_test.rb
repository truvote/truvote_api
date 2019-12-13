require 'test_helper'

class ConstituentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constituent_profile = constituent_profiles(:one)
  end

  test "should get index" do
    get constituent_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_constituent_profile_url
    assert_response :success
  end

  test "should create constituent_profile" do
    assert_difference('ConstituentProfile.count') do
      post constituent_profiles_url, params: { constituent_profile: { user_id: @constituent_profile.user_id } }
    end

    assert_redirected_to constituent_profile_url(ConstituentProfile.last)
  end

  test "should show constituent_profile" do
    get constituent_profile_url(@constituent_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_constituent_profile_url(@constituent_profile)
    assert_response :success
  end

  test "should update constituent_profile" do
    patch constituent_profile_url(@constituent_profile), params: { constituent_profile: { user_id: @constituent_profile.user_id } }
    assert_redirected_to constituent_profile_url(@constituent_profile)
  end

  test "should destroy constituent_profile" do
    assert_difference('ConstituentProfile.count', -1) do
      delete constituent_profile_url(@constituent_profile)
    end

    assert_redirected_to constituent_profiles_url
  end
end
