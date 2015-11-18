require 'test_helper'

class FlashcardTest < ActiveSupport::TestCase
  def setup
    @user = users(:fergus) 
    @good_flashcard = @user.flashcards.build(front: "front", back: "back")
    @bad_flashcard = @user.flashcards.build(front: "", back: "")  
  end

  test "empty flashcards are invalid" do
    assert_not @bad_flashcard.valid?
  end

  test "stock flashcard is valid" do
    assert @good_flashcard.valid?
  end

  test "user id should be present" do
    @good_flashcard.user_id = nil 
    assert_not @good_flashcard.valid?
  end 
end
