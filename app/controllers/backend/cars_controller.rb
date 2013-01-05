class Backend::CarsController < ApplicationController
  # GET /backend/cars
  # GET /backend/cars.json
  def index
    @backend_cars = Car.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backend_cars }
    end
  end

  # GET /backend/cars/1
  # GET /backend/cars/1.json
  def show
    @backend_car = Car.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backend_car }
    end
  end

  # GET /backend/cars/new
  # GET /backend/cars/new.json
  def new
    logger.debug(">>>>>backend new")
    @backend_car = Car.new
    @models=CarModel.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backend_car }
    end
  end

  # GET /backend/cars/1/edit
  def edit
    @backend_car = Car.find(params[:id])
  end

  # POST /backend/cars
  # POST /backend/cars.json
  def create
    @backend_car = Car.new(params[:backend_car])
    logger.debug(">>>>>create")
    respond_to do |format|
      if @backend_car.save
        format.html { redirect_to backend_car_path(@backend_car), notice: 'Car was successfully created.' }
        logger.debug(">>>>>backend format html create")
        format.json { render json: @backend_car, status: :created, location: backend_car_path(@backend_car) }
      else
        format.html { render action: "new" }
        format.json { render json: @backend_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backend/cars/1
  # PUT /backend/cars/1.json
  def update
    @backend_car = Car.find(params[:id])

    respond_to do |format|
      if @backend_car.update_attributes(params[:backend_car])
        format.html { redirect_to @backend_car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backend_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backend/cars/1
  # DELETE /backend/cars/1.json
  def destroy
    @backend_car = Car.find(params[:id])
    @backend_car.destroy

    respond_to do |format|
      format.html { redirect_to backend_cars_url }
      format.json { head :no_content }
    end
  end
end
