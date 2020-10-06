class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render "index.json.jb"
  end

  def create
    room = Room.new(
      name: params[:name],
      house_id: params[:house_id],
      room_type: params[:room_type],
      user_id: params[:user_id],
      privacy: params[:privacy],
    )
    if room.save
      render json: { message: "Room created successfully" }, status: :created
    else
      render json: { errors: room.errors.full_messages }, status: :bad_request
    end
  end
end
