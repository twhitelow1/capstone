class Api::AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
    render "index.json.jb"
  end

  def create
    assignment = Assignment.new(
      chore_id: params[:chore_id],
      user_id: params[:user_id],
      date_due: params[:date_due],
      completed: params[:completed],
      assigner_id: params[:assigner_id],
    )
    if assignment.save
      render json: { message: "Assignment created successfully" }, status: :created
    else
      render json: { errors: assignment.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @assignment = Assignment.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    assignment = Assignment.find_by(id: params[:id])
    assignment.destroy
    render json: { message: "Assignment successfully destroyed." }
  end
end
