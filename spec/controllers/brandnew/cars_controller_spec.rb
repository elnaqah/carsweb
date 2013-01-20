require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Brandnew::CarsController do

  # This should return the minimal set of attributes required to create a valid
  # Brandnew::Car. As you add validations to Brandnew::Car, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Brandnew::CarsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all brandnew_cars as @brandnew_cars" do
      car = Brandnew::Car.create! valid_attributes
      get :index, {}, valid_session
      assigns(:brandnew_cars).should eq([car])
    end
  end

  describe "GET show" do
    it "assigns the requested brandnew_car as @brandnew_car" do
      car = Brandnew::Car.create! valid_attributes
      get :show, {:id => car.to_param}, valid_session
      assigns(:brandnew_car).should eq(car)
    end
  end

  describe "GET new" do
    it "assigns a new brandnew_car as @brandnew_car" do
      get :new, {}, valid_session
      assigns(:brandnew_car).should be_a_new(Brandnew::Car)
    end
  end

  describe "GET edit" do
    it "assigns the requested brandnew_car as @brandnew_car" do
      car = Brandnew::Car.create! valid_attributes
      get :edit, {:id => car.to_param}, valid_session
      assigns(:brandnew_car).should eq(car)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Brandnew::Car" do
        expect {
          post :create, {:brandnew_car => valid_attributes}, valid_session
        }.to change(Brandnew::Car, :count).by(1)
      end

      it "assigns a newly created brandnew_car as @brandnew_car" do
        post :create, {:brandnew_car => valid_attributes}, valid_session
        assigns(:brandnew_car).should be_a(Brandnew::Car)
        assigns(:brandnew_car).should be_persisted
      end

      it "redirects to the created brandnew_car" do
        post :create, {:brandnew_car => valid_attributes}, valid_session
        response.should redirect_to(Brandnew::Car.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved brandnew_car as @brandnew_car" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brandnew::Car.any_instance.stub(:save).and_return(false)
        post :create, {:brandnew_car => {}}, valid_session
        assigns(:brandnew_car).should be_a_new(Brandnew::Car)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brandnew::Car.any_instance.stub(:save).and_return(false)
        post :create, {:brandnew_car => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested brandnew_car" do
        car = Brandnew::Car.create! valid_attributes
        # Assuming there are no other brandnew_cars in the database, this
        # specifies that the Brandnew::Car created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Brandnew::Car.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => car.to_param, :brandnew_car => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested brandnew_car as @brandnew_car" do
        car = Brandnew::Car.create! valid_attributes
        put :update, {:id => car.to_param, :brandnew_car => valid_attributes}, valid_session
        assigns(:brandnew_car).should eq(car)
      end

      it "redirects to the brandnew_car" do
        car = Brandnew::Car.create! valid_attributes
        put :update, {:id => car.to_param, :brandnew_car => valid_attributes}, valid_session
        response.should redirect_to(car)
      end
    end

    describe "with invalid params" do
      it "assigns the brandnew_car as @brandnew_car" do
        car = Brandnew::Car.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brandnew::Car.any_instance.stub(:save).and_return(false)
        put :update, {:id => car.to_param, :brandnew_car => {}}, valid_session
        assigns(:brandnew_car).should eq(car)
      end

      it "re-renders the 'edit' template" do
        car = Brandnew::Car.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brandnew::Car.any_instance.stub(:save).and_return(false)
        put :update, {:id => car.to_param, :brandnew_car => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested brandnew_car" do
      car = Brandnew::Car.create! valid_attributes
      expect {
        delete :destroy, {:id => car.to_param}, valid_session
      }.to change(Brandnew::Car, :count).by(-1)
    end

    it "redirects to the brandnew_cars list" do
      car = Brandnew::Car.create! valid_attributes
      delete :destroy, {:id => car.to_param}, valid_session
      response.should redirect_to(brandnew_cars_url)
    end
  end

end
