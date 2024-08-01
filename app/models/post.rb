class Post < ApplicationRecord
  has_many :polycomments, as: :commited
end
