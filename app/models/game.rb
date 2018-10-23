class Game < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
  validates :name, presence: true, uniqueness: true, case_sensitive: false
  enum status: [:lobby, :in_progress, :finished]
end
