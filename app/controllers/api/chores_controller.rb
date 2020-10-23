class Api::ChoresController < ApplicationController
  def index
    @chores = Chore.all
    render "index.json.jb"
  end

  def create
    chore = Chore.new(
      title: params[:title],
      desc: params[:desc],
      frequency: params[:frequency],
      last_completed: params[:last_completed],
      points_gain: params[:points_gain],
      points_price: params[:points_price],
      room_id: params[:rooms_id],
    )
    if chore.save
      render json: { message: "Chore created successfully" }, status: :created
    else
      render json: { errors: chore.errors.full_messages }, status: :bad_request
    end
  end
end
