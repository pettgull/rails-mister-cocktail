class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_associated :cocktail, :ingredient, uniqueness: true
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
