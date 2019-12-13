class ConstituentProfilesController < ApplicationController
  before_action :set_constituent_profile, only: [:show, :edit, :update, :destroy]

  # GET /constituent_profiles
  # GET /constituent_profiles.json
  def index
    @constituent_profiles = ConstituentProfile.all
  end

  # GET /constituent_profiles/1
  # GET /constituent_profiles/1.json
  def show
  end

  # GET /constituent_profiles/new
  def new
    @constituent_profile = ConstituentProfile.new
  end

  # GET /constituent_profiles/1/edit
  def edit
  end

  # POST /constituent_profiles
  # POST /constituent_profiles.json
  def create
    @constituent_profile = ConstituentProfile.new(constituent_profile_params)

    respond_to do |format|
      if @constituent_profile.save
        format.html { redirect_to @constituent_profile, notice: 'Constituent profile was successfully created.' }
        format.json { render :show, status: :created, location: @constituent_profile }
      else
        format.html { render :new }
        format.json { render json: @constituent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constituent_profiles/1
  # PATCH/PUT /constituent_profiles/1.json
  def update
    respond_to do |format|
      if @constituent_profile.update(constituent_profile_params)
        format.html { redirect_to @constituent_profile, notice: 'Constituent profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @constituent_profile }
      else
        format.html { render :edit }
        format.json { render json: @constituent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constituent_profiles/1
  # DELETE /constituent_profiles/1.json
  def destroy
    @constituent_profile.destroy
    respond_to do |format|
      format.html { redirect_to constituent_profiles_url, notice: 'Constituent profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constituent_profile
      @constituent_profile = ConstituentProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constituent_profile_params
      params.require(:constituent_profile).permit(:user_id)
    end
end
