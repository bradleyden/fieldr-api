class PlateappearancesController < ProtectedController
  before_action :set_plateappearance, only: [:show, :update, :destroy]

  # GET /pas
  def index
    @plateappearances = Plateappearance.all

    render json: @plateappearances
  end

  # GET /pas/1
  def show
    render json: @plateappearance
  end

  # POST /pas
  def create
    @plateappearance = Plateappearance.new(plateappearance_params)

    if @plateappearance.save
      render json: @plateappearance, status: :created, location: @plateappearance
    else
      render json: @plateappearance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pas/1
  def update
    if @plateappearance.update(plateappearance_params)
      render json: @plateappearance
    else
      render json: @plateappearance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pas/1
  def destroy
    @plateappearance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plateappearance
      @plateappearance = Plateappearance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plateappearance_params
      params.require(:plateappearance).permit(:inning, :batter, :pitcher, :runs, :outs, :def_error, :outcome, :game_id)
    end
end
