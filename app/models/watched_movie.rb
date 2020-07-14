class WatchedMovie < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :user_id, presence: true, uniqueness: { scope: :movie_id }
  validates :movie_id, presence: true
end
