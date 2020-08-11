class MatchingController < ApplicationController

  def index
    # 自分にいいねをした人のuser_idを取得
    got_reaction_user_ids = Reaction.where(to_user_id: current_user.id, status: 'like').pluck(:from_user_id)
    @match_users = Reaction.where(to_user_id: got_reaction_user_ids, from_user_id: current_user.id, status: 'like').map(&:to_user)
  end
end
