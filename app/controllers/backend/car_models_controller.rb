class Backend::CarModelsController < ApplicationController
  # GET /backend/car_models
  # GET /backend/car_models.json
  def index
    @backend_car_models = CarModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backend_car_models }
    end
  end

  # GET /backend/car_models/1
  # GET /backend/car_models/1.json
  def show
    @backend_car_model = CarModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backend_car_model }
    end
  end

  # GET /backend/car_models/new
  # GET /backend/car_models/new.json
  def new
    @backend_car_model = CarModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backend_car_model }
    end
  end

  # GET /backend/car_models/1/edit
  def edit
    @backend_car_model = CarModel.find(params[:id])
  end

  # POST /backend/car_models
  # POST /backend/car_models.json
  def create
    @backend_car_model = CarModel.new(params[:backend_car_model])

    respond_to do |format|
      if @backend_car_model.save
        format.html { redirect_to @backend_car_model, notice: 'Car model was successfully created.' }
        format.json { render json: @backend_car_model, status: :created, location: @backend_car_model }
      else
        format.html { render action: "new" }
        format.json { render json: @backend_car_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backend/car_models/1
  # PUT /backend/car_models/1.json
  def update
    @backend_car_model = CarModel.find(params[:id])

    respond_to do |format|
      if @backend_car_model.update_attributes(params[:backend_car_model])
        format.html { redirect_to @backend_car_model, notice: 'Car model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backend_car_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backend/car_models/1
  # DELETE /backend/car_models/1.json
  def destroy
    @backend_car_model = CarModel.find(params[:id])
    @backend_car_model.destroy

    respond_to do |format|
      format.html { redirect_to backend_car_models_url }
      format.json { head :no_content }
    end
  end
end
