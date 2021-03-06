require 'test_helper'

class FlashcardsControllerTest < ActionController::TestCase
  setup do
    @flashcard = flashcards(:one)
    @user = users(:fergus)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "card index | flash"
    assert_not_nil assigns(:flashcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flashcard" do
    assert_difference('Flashcard.count') do
      @user.flashcards.create(front: "front", back: "back")
    end
    # TEST REDIRECT
  end

  test "should show flashcard" do
    get :show, id: @flashcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flashcard
    assert_response :success
  end

  test "should update flashcard" do
    patch :update, id: @flashcard, flashcard: { back: @flashcard.back, front: @flashcard.front }
    # TEST REDIRECT
    # assert_redirected_to flashcard_path(assigns(:flashcard))
  end

  test "should destroy flashcard" do
    assert_difference('Flashcard.count', -1) do
      delete :destroy, id: @flashcard
    end

    assert_redirected_to flashcards_path
  end
end
