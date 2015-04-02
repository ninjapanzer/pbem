class PlotPointsController < ApplicationController
  before_action :set_plot_point, only: [:show, :edit, :update, :destroy]

  # GET /plot_points
  # GET /plot_points.json
  def index
    @plot_points = PlotPoint.all
  end

  # GET /plot_points/1
  # GET /plot_points/1.json
  def show
  end

  # GET /plot_points/new
  def new
    @plot_point = PlotPoint.new
  end

  # GET /plot_points/1/edit
  def edit
  end

  # POST /plot_points
  # POST /plot_points.json
  def create
    @plot_point = PlotPoint.new(plot_point_params)

    respond_to do |format|
      if @plot_point.save
        format.html { redirect_to @plot_point, notice: 'Plot point was successfully created.' }
        format.json { render :show, status: :created, location: @plot_point }
      else
        format.html { render :new }
        format.json { render json: @plot_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plot_points/1
  # PATCH/PUT /plot_points/1.json
  def update
    respond_to do |format|
      if @plot_point.update(plot_point_params)
        format.html { redirect_to @plot_point, notice: 'Plot point was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot_point }
      else
        format.html { render :edit }
        format.json { render json: @plot_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plot_points/1
  # DELETE /plot_points/1.json
  def destroy
    @plot_point.destroy
    respond_to do |format|
      format.html { redirect_to plot_points_url, notice: 'Plot point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot_point
      @plot_point = PlotPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_point_params
      params.require(:plot_point).permit(:title, :description, :story_id)
    end
end
