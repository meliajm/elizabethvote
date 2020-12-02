class Api::V1::UsersController < SecuredController

    # GET /users
    def index
        @users = User.all
        render json: @users
    end

    # GET /user/:id
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    # POST /users
    def create
        @user = User.new(user_params)
    
        if @user.save
            render json: @user, status: :created 
                
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :phonenumber, :receivesNotification, :address1, :address2, :city, :zip, :state, :message, :canVolunteer, :password)   
    end
    
        # :lastname, :email, :phonenumber, :receivesNotification, :address1, :address2, :city, :zip, :state, :message, :canVolunteer
end
