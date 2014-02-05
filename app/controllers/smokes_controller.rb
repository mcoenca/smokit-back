class SmokesController < ApplicationController
  before_action :set_smoke, only: [:show, :edit, :update, :destroy]

  # GET /smokes
  # GET /smokes.json
  def index
    @smokes = Smoke.all
  end

  # GET /smokes/1
  # GET /smokes/1.json
  def show
  end

  # GET /smokes/new
  def new
    @smoke = Smoke.new
  end

  # GET /smokes/1/edit
  def edit
  end

  # POST /smokes
  # POST /smokes.json
  def create
    @smoke = Smoke.new(smoke_params)

    respond_to do |format|
      if @smoke.save
        format.html { redirect_to @smoke, notice: 'Smoke was successfully created.' }
        format.json { render action: 'show', status: :created, location: @smoke }
      else
        format.html { render action: 'new' }
        format.json { render json: @smoke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smokes/1
  # PATCH/PUT /smokes/1.json
  def update
    respond_to do |format|
      if @smoke.update(smoke_params)
        format.html { redirect_to @smoke, notice: 'Smoke was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @smoke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smokes/1
  # DELETE /smokes/1.json
  def destroy
    @smoke.destroy
    respond_to do |format|
      format.html { redirect_to smokes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smoke
      @smoke = Smoke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smoke_params
      params.require(:smoke).permit(:user_id, :smoke_date, :smoke_lat, :smoke_long)
    end
end
