class Api::HomesController < ApplicationController
  def index
    @homes = Home.all
    render "index.json.jb"
  end

  def create
    home = Home.new(
      address: params[:address],
      home_type: params[:home_type],
      user_id: params[:user_id],
    )
    if home.save
      render json: { message: "Home created successfully" }, status: :created
    else
      render json: { errors: home.errors.full_messages }, status: :bad_request
    end
  end
end
