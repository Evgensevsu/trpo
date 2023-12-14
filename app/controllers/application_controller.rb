class ApplicationController < ActionController::Base
<<<<<<< HEAD
    before_action :set_render_cart
    before_action :initialize_cart

    def set_render_cart
      @render_cart = true
    end
  
    def initialize_cart
      @cart ||= Cart.find_by(id: session[:cart_id])
  
      if @cart.nil?
        @cart = Cart.create
        session[:cart_id] = @cart.id
      end
    end
  end
=======
end
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
