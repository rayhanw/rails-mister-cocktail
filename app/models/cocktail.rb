class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_taggable_on :tags

  validates :name, uniqueness: true, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
end
