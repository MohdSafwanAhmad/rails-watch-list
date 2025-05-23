class Movie < ApplicationRecord
  has_many :bookmarks # creates a method .bookmarks that returns an arrays of bookmarks associated with a movie
  has_many :lists, through: :bookmarks # creates a method .bookmarks that returns an arrays of bookmarks associated with a movie

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
