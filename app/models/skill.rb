class Skill < ApplicationRecord
  validates :name, uniqueness: true

  has_many :profiles_skills
  has_many :profiles, through: :profiles_skills
end
