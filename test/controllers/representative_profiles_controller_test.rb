require 'test_helper'

class RepresentativeProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representative_profile = representative_profiles(:one)
  end

  test "should get index" do
    get representative_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_representative_profile_url
    assert_response :success
  end

  test "should create representative_profile" do
    assert_difference('RepresentativeProfile.count') do
      post representative_profiles_url, params: { representative_profile: { user_id: @representative_profile.user_id } }
    end

    assert_redirected_to representative_profile_url(RepresentativeProfile.last)
  end

  test "should show representative_profile" do
    get representative_profile_url(@representative_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_representative_profile_url(@representative_profile)
    assert_response :success
  end

  test "should update representative_profile" do
    patch representative_profile_url(@representative_profile), params: { representative_profile: { user_id: @representative_profile.user_id } }
    assert_redirected_to representative_profile_url(@representative_profile)
  end

  test "should destroy representative_profile" do
    assert_difference('RepresentativeProfile.count', -1) do
      delete representative_profile_url(@representative_profile)
    end

    assert_redirected_to representative_profiles_url
  end
end
