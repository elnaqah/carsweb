class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    if(params[:id] != "" && params[:id])
      @model_id=params[:id]
      @cars = Car.order(params[:sort]).where(:car_model_id=>params[:id],:used=>true)
    elsif(params[:PriceFrom] !="" && params[:PriceFrom] && params[:PriceTo] !="" && params[:PriceTo])
      @cars=Car.search(params[:PriceFrom],params[:PriceTo],true)
    else
    @cars=Car.order(params[:sort]).where(:used=>true)
    end
    @models=CarModel.all
    
    #logger.debug params[:user]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/new
  # GET /cars/new.json
  def new
    @car = Car.new
    @models= CarModel.get_models_names
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/1/edit
  def edit
    @car = Car.find(params[:id])
    @models= CarModel.get_models_names
  end

  # POST /cars
  # POST /cars.json
  def create
    if params[:user]
      if params[:user][:name]=='admin' && params[:user][:password]=='admin'
        session[:admin]=true
        flash[:notice] = "successfully logged in as administrator"
        redirect_to cars_path
      else
        flash[:notice] = "Wrong administrator username and password"
        redirect_to cars_path
      end
      
    else
       @car = Car.new(params[:car])
      #logger.debug(@car.inspect)
      respond_to do |format|
        if @car.save
          format.html { redirect_to @car, notice: 'Car was successfully created.' }
          format.json { render json: @car, status: :created, location: @car }
        else
          format.html { render action: "new" }
          format.json { render json: @car.errors, status: :unprocessable_entity }
        end
      end 
    end
    
  end
  
  def destroy_admin
    session[:admin]=nil
    redirect_to cars_path
  end
  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :no_content }
    end
  end
  
end
