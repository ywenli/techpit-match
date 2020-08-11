class ChatController < ApplicationController

  def create
    # 自分の持っているチャットルームを取得
    current_user_chat_rooms = ChatRoomUser.where(user_id: current_user.id).map(&:chat_room)
    # 自分の持っているチャッルームからチャット相手のいるルームを探す
    chat_room = ChatRoomUser.where(chat_room: current_user_chat_rooms, user_id: params[:user_id]).map(&:chat_room).first
    # なければ作成する
    if chat_room.blank?
      chat_room = ChatRoom.create
      ChatRoomUser.create(chat_room: chat_room, user_id: current_user.id)
      ChatRoomUser.create(chat_room: chat_room, user_id: params[:user_id])
    end
    # チャットルームへ遷移させる
    redirect_to action: :show, id: chat_room.id
  end
end
