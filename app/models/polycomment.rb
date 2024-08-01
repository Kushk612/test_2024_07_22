class Polycomment < ApplicationRecord
  belongs_to :commited, polymorphic: true
end
