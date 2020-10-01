class UsersController < ApplicationController
  
  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweeets.page(params[:page]).per(5).order("created_at DESC")
  end

end

