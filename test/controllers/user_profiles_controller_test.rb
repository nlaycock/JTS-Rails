require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase


  setup do
    @user_profile = user_profiles(:one)
    @user = User.new(:id => 1, :user_type => 1)
    sign_in @user
    @user_profile.user = @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post :create, user_profile: { about_me: @user_profile.about_me, city: @user_profile.city, country: @user_profile.country, dob: @user_profile.dob, first_name: @user_profile.first_name, last_name: @user_profile.last_name, preferred_email: @user_profile.preferred_email, state: @user_profile.state, user_type:1 }
    end

    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should show user_profile" do
    get :show, id: @user_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profile
    assert_response :success
  end

  test "should update user_profile" do
    patch :update, id: @user_profile, user_profile: { about_me: @user_profile.about_me, city: @user_profile.city, country: @user_profile.country, dob: @user_profile.dob, first_name: @user_profile.first_name, last_name: @user_profile.last_name, preferred_email: @user_profile.preferred_email, state: @user_profile.state }
    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete :destroy, id: @user_profile
    end

    assert_redirected_to user_profiles_path
  end
end
