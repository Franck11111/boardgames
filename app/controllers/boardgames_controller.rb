class BoardgamesController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @boardgames = boardgames.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @boardgames = Boardgame.all
    end
  end
end
