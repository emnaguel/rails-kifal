class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
 def index
  @cars = Car.all
end

def show
  @car = Car.find(params[:id])
end

def new
  @driver = Driver.last
  @car = Car.new

end

def create
  @car = Car.new(car_params)
  @car.driver = Driver.last
  @car.save

  redirect_to note_path
end

private

def car_params
  params.require(:car).permit(:cover_picture, :marque, :modele, :km, :prix, :année, :driver_id, pictures: [])
end



end
