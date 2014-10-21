class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @user_profiles = UserProfile.all
    respond_with(@user_profiles)
  end

  def show
    respond_to do |format|
      format.html
      format.xml { render :xml => @user_profile.to_xml }
    end
  end

  def new
    @user_profile = UserProfile.new
    @user_type = current_user.user_type
    respond_with(@user_profile)
  end

  def edit
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user_id = current_user.id
    @user_profile.save

    respond_with(@user_profile)

  end

  def update
    @user_profile.update(user_profile_params)
    respond_with(@user_profile)
  end

  def destroy
    @user_profile.destroy
    respond_with(@user_profile)
  end

  private
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    def user_profile_params
      params.require(:user_profile).permit(:first_name, :last_name, :country, :state, :city, :preferred_email, :about_me, :dob)
    end
end
