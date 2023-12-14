class HomeController < ApplicationController
    before_action :authenticate_user!
<<<<<<< HEAD
    def index
        redirect_to edit_user_registration_path
    end
end
=======
  
    def index
      redirect_to edit_user_registration_path
    end
  end
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
