class PokerFace < ApplicationRecord
  has_many :polycomments, as: :commited

  validates :batch_id, presence: true
end
