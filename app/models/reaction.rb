class Reaction < ApplicationRecord
  # to_userのモデルはUserモデルであると明示
  # reaction.to_userやreaction.from_userのような記述が可能になる
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User"

end
