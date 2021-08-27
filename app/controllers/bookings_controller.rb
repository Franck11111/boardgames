class BookingsController < ApplicationController
  def index
    # @user = User.find(params[:user_id])
    # @booking.user = current_user
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @boardgame = Boardgame.find(params[:boardgame_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @boardgame = Boardgame.find(params[:boardgame_id])
    @booking = Booking.new(booking_params)
    @booking.boardgame = @boardgame
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end
end