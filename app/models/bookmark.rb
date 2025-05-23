class Bookmark < ApplicationRecord
  belongs_to :movie # creates a method .movie that returns the movie associate with a bookmark
  belongs_to :list # creates a method .list that returns the list associate with a bookmark

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: {scope: :list }
end
