class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :update, :destroy, :enroll, :show_enrolled_user]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:success] = "Game added successfully"
    else
      flash[:danger] = "Something went wrong"
    end
    redirect_to  games_path 
  end

  def edit
  end

  def update
    if @game.update_attributes(game_params)
      flash[:success] = "Game added successfully"
    else
      flash[:danger] = "Something went wrong"
    end
    redirect_to  games_path
  end

  def destroy
    if @game.destroy
      flash[:success] = "Game deleted successfully"
    end
    redirect_to games_path
  end

  def enroll
  end

  def enrolled_user
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], gender: params[:gender], email: params[:email])
    @user_enrollment = Enrollment.new(game_id: params[:id], user_id: @user.id, category: params[:category])
    if @user_enrollment.save!
      flash[:success] = "record added successfully"
    end
    redirect_to games_path
  end

  def show_enrolled_user
    @enrolled_users = @game.enrollments
  end

  private

  def set_game
    @game = Game.find_by(id: params[:id])
  end

  def game_params
    params.require(:game).permit(:name)
  end

end
