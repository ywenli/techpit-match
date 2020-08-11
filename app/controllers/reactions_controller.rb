class ReactionsController < ApplicationController

  def create
    # find_or_initialize_byメソッド: 引数で渡したカラムでfindをかけて該当しなかったらインスタンスを作成
    reaction = Reaction.find_or_initialize_by(to_user_id: params[:user_id], from_user_id: params[:current_user.id])
    reaction.update_attributes(
      status: params[:reaction]
    )
  end
end
