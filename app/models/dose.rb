class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: [:cocktail] } # permet de gérer la condition d'unicité d'un ingrédient pour un cocktail
  validates :description, presence: true
  validates_associated :cocktail, :ingredient
end
