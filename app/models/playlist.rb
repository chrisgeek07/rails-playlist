class Playlist < ApplicationRecord
  validates :name, :genre, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end
