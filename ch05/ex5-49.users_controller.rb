# 리스트 5-49 users_controller.rb

class UsersController < ApplicationController
  
    def user_params
      params.require(:user).permit(:username, :password, :salt, :email, :dm, :roles, :agreement)
    end

end
