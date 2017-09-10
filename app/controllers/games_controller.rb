class GamesController < ProtectedController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = current_user.games.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = current_user.games.build(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:date, :home, :away, :away_runs, :home_runs,
      :away_hits, :home_hits, :away_errors, :home_errors, :total_innings, :top_one,
      :bot_one, :top_two, :bot_two, :top_three, :bot_three, :top_four, :bot_four,
      :top_five, :bot_five, :top_six, :bot_six, :top_seven, :bot_seven, :top_eight,
      :bot_eight, :top_nine, :bot_nine, :top_ten, :bot_ten, :top_eleven, :bot_eleven,
      :top_twelve, :bot_twelve, :top_thirteen, :bot_thirteen, :top_fourteen, :bot_fourteen,
      :top_fifteen, :bot_fifteen, :top_sixteen, :bot_sixteen, :top_seventeen, :bot_seventeen,
      :top_eighteen, :bot_eighteen)
    end

end
