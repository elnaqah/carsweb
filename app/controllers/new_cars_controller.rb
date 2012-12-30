class NewCarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    @new_cars = NewCar.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_cars }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @new_car = NewCar.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_car }
    end
  end

  # GET /cars/new
  # GET /cars/new.json
  def new
    @new_car = NewCar.new
    @models= CarModel.get_models_names
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_car }
    end
  end

  # GET /cars/1/edit
  def edit
    @new_car = NewCar.find(params[:id])
    @models= CarModel.get_models_names
  end

  # POST /cars
  # POST /cars.json
  def create
    @new_car = NewCar.new(params[:new_car])
    #logger.debug(@car.inspect)
    respond_to do |format|
      if @new_car.save
        format.html { redirect_to @new_car, notice: 'Car was successfully created.' }
        format.json { render json: @new_car, status: :created, location: @new_car }
      else
        format.html { render action: "new" }
        format.json { render json: @new_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @new_car = NewCar.find(params[:id])

    respond_to do |format|
      if @new_car.update_attributes(params[:new_car])
        format.html { redirect_to @new_car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @new_car = NewCar.find(params[:id])
    @new_car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :no_content }
    end
  end
end
