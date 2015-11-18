class Flashcard < ActiveRecord::Base
  belongs_to :user
  validates :front, presence: true
  validates :back, presence: true
  validates :user_id, presence: true
end
