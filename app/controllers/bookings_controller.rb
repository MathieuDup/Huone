class BookingsController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    redirect_to room_path(@room), notice: "An error has occured, please try again" unless @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :guests)
  end
end
