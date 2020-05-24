class Movie < ApplicationRecord

  validates :url, presence: true
  validates :title, presence: true
end
