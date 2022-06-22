class MeetingLocationsController < ApplicationController
  before_action :set_meeting_location, only: %i[ show edit update destroy ]

  # GET /meeting_locations or /meeting_locations.json
  def index
    @meeting_locations = MeetingLocation.all
  end

  # GET /meeting_locations/1 or /meeting_locations/1.json
  def show
  end

  # GET /meeting_locations/new
  def new
    @meeting_location = MeetingLocation.new
  end

  # GET /meeting_locations/1/edit
  def edit
  end

  # POST /meeting_locations or /meeting_locations.json
  def create
    @meeting_location = MeetingLocation.new(meeting_location_params)

    respond_to do |format|
      if @meeting_location.save
        format.html { redirect_to meeting_location_url(@meeting_location), notice: "Meeting location was successfully created." }
        format.json { render :show, status: :created, location: @meeting_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_locations/1 or /meeting_locations/1.json
  def update
    respond_to do |format|
      if @meeting_location.update(meeting_location_params)
        format.html { redirect_to meeting_location_url(@meeting_location), notice: "Meeting location was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_locations/1 or /meeting_locations/1.json
  def destroy
    @meeting_location.destroy

    respond_to do |format|
      format.html { redirect_to meeting_locations_url, notice: "Meeting location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_location
      @meeting_location = MeetingLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_location_params
      params.require(:meeting_location).permit(:name, :lat, :lng, :locationRadius, :address, :city, :province)
    end
end
