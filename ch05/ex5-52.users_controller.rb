# 리스트 5-52 users_controller.rb

class UsersController < ApplicationController

    def user_params
      params.require(:user).permit(:username, :password, :salt, :email, :email_confirmation, :dm,
        :roles, :reviews_count, :agreement)
    end
    
end
