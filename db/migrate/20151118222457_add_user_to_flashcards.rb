class AddUserToFlashcards < ActiveRecord::Migration
  def change
    add_reference :flashcards, :user, index: true, foreign_key: true
  end
end
