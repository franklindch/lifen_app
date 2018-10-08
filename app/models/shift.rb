class Shift < ApplicationRecord
  belongs_to :planning
  belongs_to :worker, class_name: 'User', foreign_key: 'user_id'
end
