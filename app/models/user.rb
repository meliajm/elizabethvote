class User < ApplicationRecord
    validates_presence_of :firstname, :lastname, :email, :phonenumber, :receivesNotification, :address1, :address2, :city, :zip, :state, :message, :canVolunteer, :password
    
end
