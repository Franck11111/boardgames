class BoardgamesController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @boardgames = boardgames.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @boardgames = boardgames.all
    end
  end
end
