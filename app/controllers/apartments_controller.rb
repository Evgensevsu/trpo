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
<<<<<<< HEAD
        redirect_to @apartment, notice: 'Объект успешно создан.'
      else
        render :new, status: 422
=======
        redirect_to @apartment, notice: 'Apartment was successfully created.'
      else
        render :new, status: 498
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
      end
    end
  
    def edit
      @apartment = Apartment.find(params[:id])
    end
  
    def update
      @apartment = Apartment.find(params[:id])
      
      if @apartment.update(apartment_params)
<<<<<<< HEAD
        redirect_to @apartment, notice: 'Объект успешно загружен.'
=======
        redirect_to @apartment, notice: 'Apartment was successfully updated.'
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
      else
        render :edit
      end
    end
  
    def destroy
      @apartment = Apartment.find(params[:id])
      @apartment.destroy
      
<<<<<<< HEAD
      redirect_to apartments_url, notice: 'Объект успешно удалён.'
=======
      redirect_to apartments_url, notice: 'Apartment was successfully destroyed.'
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
    end
  
    private
  
    def apartment_params
<<<<<<< HEAD
      params.require(:apartment).permit(:title, :picture, :description, :price, :location)
    end
=======
        params.require(:apartment).permit(:title, :description, :price, :location)
      end
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
  end