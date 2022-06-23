class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @rooms = Room.all
  end
end
