class Question < ApplicationRecord
  validates :title, presence: true
  validates :detail, presence: true
  has_many :solutions
  is_impressionable
end