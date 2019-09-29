class Book < ApplicationRecord
  belongs_to :category
  has_many :authors_books
  has_many :authors, through: :authors_books
  validates :title, :category, presence: true

  scope :latest, -> { includes(:authors).first(3) }
  scope :best_sellers, -> { includes(:authors).first(4) } #TODO
end
