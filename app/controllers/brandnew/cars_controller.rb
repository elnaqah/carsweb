class Brandnew::CarsController < ApplicationController
  # GET /brandnew/cars
  # GET /brandnew/cars.json
  def index


    @brandnew_cars = Car.where(used=false)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brandnew_cars }
    end
  end

  # GET /brandnew/cars/1
  # GET /brandnew/cars/1.json
  def show
    @brandnew_car = Car.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brandnew_car }
    end
  end

  # GET /brandnew/cars/new
  # GET /brandnew/cars/new.json
  def new
    @brandnew_car = Car.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brandnew_car }
    end
  end

  # GET /brandnew/cars/1/edit
  def edit
    @brandnew_car = Car.find(params[:id])
  end

  # POST /brandnew/cars
  # POST /brandnew/cars.json
  def create
    @brandnew_car = Car.new(params[:brandnew_car])

    respond_to do |format|
      if @brandnew_car.save
        format.html { redirect_to @brandnew_car, notice: 'Car was successfully created.' }
        format.json { render json: @brandnew_car, status: :created, location: @brandnew_car }
      else
        format.html { render action: "new" }
        format.json { render json: @brandnew_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brandnew/cars/1
  # PUT /brandnew/cars/1.json
  def update
    @brandnew_car = Car.find(params[:id])

    respond_to do |format|
      if @brandnew_car.update_attributes(params[:brandnew_car])
        format.html { redirect_to @brandnew_car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brandnew_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brandnew/cars/1
  # DELETE /brandnew/cars/1.json
  def destroy
    @brandnew_car = Car.find(params[:id])
    @brandnew_car.destroy

    respond_to do |format|
      format.html { redirect_to brandnew_cars_url }
      format.json { head :no_content }
    end
  end
end
