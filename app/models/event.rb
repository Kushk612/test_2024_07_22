class Event < ApplicationRecord
  has_many :polycomments, as: :commited
end
