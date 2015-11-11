json.array!(@flashcards) do |flashcard|
  json.extract! flashcard, :id, :front, :back
  json.url flashcard_url(flashcard, format: :json)
end
