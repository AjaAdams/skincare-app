class Api::RoutinesController < ApplicationController

  def index
    @routines = Routine.all
    render "index.json.jb"
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @routine = Routine.find_by(id: params[:id])

    @routine.name = params[:name] || @routine.name

    if @routine.save
      render "show.json.jb"
    else
      render json: { errors: @routine.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @routine = Routine.find_by(id: params[:id])

    @routine.destroy
    render json: {message: "Routine successfully removed!"}
  end

  # def create
  #   @routine = Routine.new ({
  #     name: params[:name]
  #   })
  # end
  # needs work


end
