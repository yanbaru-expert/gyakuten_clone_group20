class Movie < ApplicationRecord
  has_many :watched_movies, dependent: :destroy
  validates :url, presence: true
  validates :title, presence: true
end
