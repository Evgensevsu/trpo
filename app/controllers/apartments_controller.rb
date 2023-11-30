class ApartmentsController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource
    
    def index
      @apartments = Apartment.all
    end
  
    def show
      @apartment = Apartment.find(params[:id])
    end
  
    def new
      @apartment = Apartment.new
    end
  
    def create
      @apartment = Apartment.new(apartment_params)
      @apartment.user = current_user
      
      if @apartment.save
        redirect_to @apartment, notice: 'Apartment was successfully created.'
      else
        render :new, status: 498
      end
    end
  
    def edit
      @apartment = Apartment.find(params[:id])
    end
  
    def update
      @apartment = Apartment.find(params[:id])
      
      if @apartment.update(apartment_params)
        redirect_to @apartment, notice: 'Apartment was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @apartment = Apartment.find(params[:id])
      @apartment.destroy
      
      redirect_to apartments_url, notice: 'Apartment was successfully destroyed.'
    end
  
    private
  
    def apartment_params
        params.require(:apartment).permit(:title, :description, :price, :location)
      end
  end