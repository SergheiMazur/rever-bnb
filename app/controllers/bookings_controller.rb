class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = booking.find(params[:id])
    @user = User.new
  end

  def new
    @booking = booking.new
  end

  def create
    @booking = booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :rating, :description)
  end
end
