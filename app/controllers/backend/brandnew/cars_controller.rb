class Backend::Brandnew::CarsController < ApplicationController
  # GET /backend/brandnew/cars
  # GET /backend/brandnew/cars.json
  def index
    @backend_brandnew_cars =Car.where(:used=>false)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backend_brandnew_cars }
    end
  end

  # GET /backend/brandnew/cars/1
  # GET /backend/brandnew/cars/1.json
  def show
    @backend_brandnew_car = Car.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backend_brandnew_car }
    end
  end

  # GET /backend/brandnew/cars/new
  # GET /backend/brandnew/cars/new.json
  def new
    @backend_brandnew_car = Car.new
    @models=CarModel.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backend_brandnew_car }
    end
  end

  # GET /backend/brandnew/cars/1/edit
  def edit
    @backend_brandnew_car = Car.find(params[:id])
    @models=CarModel.all
  end

  # POST /backend/brandnew/cars
  # POST /backend/brandnew/cars.json
  def create
    @backend_brandnew_car =Car.new(params[:backend_brandnew_car])
    @models=CarModel.all

    respond_to do |format|
      @backend_brandnew_car.used=false
      if @backend_brandnew_car.save
        format.html { redirect_to backend_brandnew_car_path(@backend_brandnew_car), notice: 'Car was successfully created.' }
        format.json { render json: @backend_brandnew_car, status: :created, location: @backend_brandnew_car }
      else
        format.html { render action: "new" }
        format.json { render json: @backend_brandnew_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backend/brandnew/cars/1
  # PUT /backend/brandnew/cars/1.json
  def update
    @backend_brandnew_car = Car.find(params[:id])

    respond_to do |format|
      if @backend_brandnew_car.update_attributes(params[:backend_brandnew_car])
        format.html { redirect_to backend_brandnew_car_path(@backend_brandnew_car), notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backend_brandnew_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backend/brandnew/cars/1
  # DELETE /backend/brandnew/cars/1.json
  def destroy
    @backend_brandnew_car = Car.find(params[:id])
    @backend_brandnew_car.destroy

    respond_to do |format|
      format.html { redirect_to backend_brandnew_cars_url }
      format.json { head :no_content }
    end
  end
end
