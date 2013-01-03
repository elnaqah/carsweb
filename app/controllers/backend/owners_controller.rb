class Backend::OwnersController < ApplicationController
  # GET /backend/owners
  # GET /backend/owners.json
  def index
    @backend_owners = Backend::Owner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backend_owners }
    end
  end

  # GET /backend/owners/1
  # GET /backend/owners/1.json
  def show
    @backend_owner = Backend::Owner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backend_owner }
    end
  end

  # GET /backend/owners/new
  # GET /backend/owners/new.json
  def new
    @backend_owner = Backend::Owner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backend_owner }
    end
  end

  # GET /backend/owners/1/edit
  def edit
    @backend_owner = Backend::Owner.find(params[:id])
  end

  # POST /backend/owners
  # POST /backend/owners.json
  def create
    @backend_owner = Backend::Owner.new(params[:backend_owner])

    respond_to do |format|
      if @backend_owner.save
        format.html { redirect_to @backend_owner, notice: 'Owner was successfully created.' }
        format.json { render json: @backend_owner, status: :created, location: @backend_owner }
      else
        format.html { render action: "new" }
        format.json { render json: @backend_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backend/owners/1
  # PUT /backend/owners/1.json
  def update
    @backend_owner = Backend::Owner.find(params[:id])

    respond_to do |format|
      if @backend_owner.update_attributes(params[:backend_owner])
        format.html { redirect_to @backend_owner, notice: 'Owner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backend_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backend/owners/1
  # DELETE /backend/owners/1.json
  def destroy
    @backend_owner = Backend::Owner.find(params[:id])
    @backend_owner.destroy

    respond_to do |format|
      format.html { redirect_to backend_owners_url }
      format.json { head :no_content }
    end
  end
end
