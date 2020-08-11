class UsersController < ApplicationController

  def index
    # @users = 現在ログインしているユーザー以外のレコード全て
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
