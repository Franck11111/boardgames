class BoardgamesController < ApplicationController
  before_action :set_boardgame, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @boardgames = Boardgame.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      # @boardgames = boardgames.all
      @boardgames = policy_scope(Boardgame)
    end
  end

  def show
    authorize @boardgame
  end

  # GET /boardgames/new
  def new
    @boardgame = Boardgame.new
    authorize @boardgame
  end

  # GET /boardgames/1/edit
  def edit
    authorize @boardgame
  end

  # POST /boardgames
  def create
    @boardgame = Boardgame.new(boardgame_params)
    @boardgame.user = current_user
    authorize @boardgame

    if @boardgame.save
      redirect_to @boardgame, notice: 'Boardgame was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /boardgames/1
  def update
    authorize @boardgame
    if @boardgame.update(boardgame_params)
      redirect_to @boardgame, notice: 'Boardgame was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /boardgames/1
  def destroy
    authorize @boardgame
    @boardgame.destroy
    redirect_to boardgames_url, notice: 'Boardgame was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boardgame
      @boardgame = Boardgame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def boardgame_params
      params.require(:boardgame).permit(:title, :user_id, :description, :price_per_day, photos: [])
    end
end
