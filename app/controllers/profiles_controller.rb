class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :set_profiles, only: %i[ index ]

  def index
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html do
 redirect_to profile_url(@profile), notice: "Profile was successfully created." end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html do
 redirect_to profile_url(@profile), notice: "Profile was successfully updated." end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy

    respond_to do |format|
      format.html do
        redirect_to profiles_url, notice: "Profile was successfully destroyed."
      end
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def set_profiles
      @profiles = Profile.all
    end

    def profile_params
      params.require(:profile).permit(:name, :link, :bio, skill_ids: [])
    end
end
