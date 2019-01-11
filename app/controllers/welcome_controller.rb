class WelcomeController < ApplicationController

  def home
  end

  def json_sample
    if params[:myData]
      v = { firstName: 'Niketa'}
    else
      v = {firstName: 'Biswa', lastName: 'Das'}
    end
    render json: v
  end

  def fetch_description
    case params[:car]
    when 'volvo'
      result = { description: 'Description for Volvo'}
    when 'saab'
      result = { description: 'Description for Saab'}
    else
      result = { description: 'No Description'}
    end
    render json: result
  end
end
