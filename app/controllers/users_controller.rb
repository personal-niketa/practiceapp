class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  def index
    @users = User.all
    @total_user = User.all.count
    @user_male = User.where(gender: "male").count
    @user_female = User.where(gender: "female").count
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      flash[:success] = "User Added successfully."
    else
      flash[:danger] = "Something went wrong."  
    end
    redirect_to users_path
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "User Updated successfully."
    else
      flash[:danger] = "Something went wrong."
    end
    redirect_to users_path
  end

  def destroy
    if @user.destroy
      flash[:danger] = "User has been deleted successfully."
      redirect_to users_path
    end
  end

  
  def fetch_users
    u = User.where(email: params[:user_email])
    if u.exists?
      result = { flag: true}
    else
      result = { flag: false}
    end  
    render json: result
  end

  def fetch_user_age
    render json: {age_result: user_age(params[:user_dob].to_date)}
  end  


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :dob)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_age(dob)
    now = Time.now.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1) 
  end

end
