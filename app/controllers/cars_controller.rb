class CarsController < ApplicationController

  def index
    if params[:car_model].present?
      @cars = Car.where(car_model: params[:car_model])
    else  
      @cars = Car.all
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params) 
    if @car.save
      flash[:success] = "Car Added successfully."
      redirect_to cars_path
    end
  end

  def fetch_cars
    c = Car.where(car_model: params[:car_name])
    if c.exists?
      result = { flag: true}
    else
      result = { flag: false}
    end  
    render json: result
  end

private

  def car_params
    params.require(:car).permit(:car_model, :description)
  end

end
