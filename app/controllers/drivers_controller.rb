class DriversController < ApplicationController


  def new
    @driver = Driver.new
    @car = Car.new
  end

  def create
    @driver = Driver.new(driver_params)
    @driver.save
    redirect_to new_car_path
  end

private

  def driver_params
     params.require(:driver).permit(:first_name, :last_name, :email, :téléphone)
  end
end
