class BookingsController < ApplicationController
  before_action :set_game, only: [:create, :new]


  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.game = @game
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
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :place)
  end

   def set_game
    @game = Game.find(params[:game_id])
  end

end
