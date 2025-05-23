class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # creates a method .bookmarks that returns an arrays of bookmarks associated with a list
  has_many :movies, through: :bookmarks # creates a method .movies that returns an arrays of movies associated with a list

  validates :name, presence: true
  validates :name, uniqueness: true
end
